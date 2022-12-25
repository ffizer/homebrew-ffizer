#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

GITHUB_REPO="ffizer"
GITHUB_USER="ffizer"

get_latest_release() {
  curl --silent "https://api.github.com/repos/$GITHUB_USER/$GITHUB_REPO/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                                                   # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                                           # Pluck JSON value
}

shasum_of() {
  local URL=$1
  local TMP_FILE=/tmp/shasum_tmp
  rm -f "$TMP_FILE" || true
  curl -SL --fail --output "$TMP_FILE" "$URL"
  sha256sum "$TMP_FILE" | cut -d' ' -f1
  rm -f "$TMP_FILE" || true
}

VERSION=${1:-$(get_latest_release)}
HOMEBREW_ASSET_URL_x86_64_apple_darwin="https://github.com/${GITHUB_USER}/${GITHUB_REPO}/releases/download/${VERSION}/${GITHUB_REPO}_${VERSION}-x86_64-apple-darwin.tgz"
HOMEBREW_ASSET_SHA256_x86_64_apple_darwin=$(shasum_of "$HOMEBREW_ASSET_URL_x86_64_apple_darwin")
HOMEBREW_ASSET_URL_aarch64_apple_darwin="https://github.com/${GITHUB_USER}/${GITHUB_REPO}/releases/download/${VERSION}/${GITHUB_REPO}_${VERSION}-aarch64-apple-darwin.tgz"
HOMEBREW_ASSET_SHA256_aarch64_apple_darwin=$(shasum_of "$HOMEBREW_ASSET_URL_aarch64_apple_darwin")
HOMEBREW_ASSET_URL_x86_64_unknown_linux_gnu="https://github.com/${GITHUB_USER}/${GITHUB_REPO}/releases/download/${VERSION}/${GITHUB_REPO}_${VERSION}-x86_64-unknown-linux-gnu.tgz"
HOMEBREW_ASSET_SHA256_x86_64_unknown_linux_gnu=$(shasum_of "$HOMEBREW_ASSET_URL_x86_64_unknown_linux_gnu")

cat >HomebrewFormula/ffizer-bin.rb <<EOF
# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/${GITHUB_USER}/${GITHUB_REPO}"
  version "${VERSION}"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "$HOMEBREW_ASSET_URL_x86_64_apple_darwin"
    sha256 "$HOMEBREW_ASSET_SHA256_x86_64_apple_darwin"
  elsif OS.mac?
    url "$HOMEBREW_ASSET_URL_aarch64_apple_darwin"
    sha256 "$HOMEBREW_ASSET_SHA256_aarch64_apple_darwin"
  elsif OS.linux?
    url "${HOMEBREW_ASSET_URL_x86_64_unknown_linux_gnu}"
    sha256 "${HOMEBREW_ASSET_SHA256_x86_64_unknown_linux_gnu}"
  end

  # conflicts_with "${GITHUB_REPO}"

  def install
    bin.install "${GITHUB_REPO}"
    # man1.install "doc/${GITHUB_REPO}.1"

    # bash_completion.install "complete/${GITHUB_REPO}.bash"
    # fish_completion.install "complete/${GITHUB_REPO}.fish"
    # zsh_completion.install "complete/_${GITHUB_REPO}"
  end

  test do
    system "#{bin}/${GITHUB_REPO}", "--help"
  end
end
EOF

echo "::set-output name=version::${VERSION}"
