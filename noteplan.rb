class Noteplan < Formula
  desc "Count noteplan todos"
  homepage "https://github.com/oschrenk/noteplan"
  license "APL"
  head "https://github.com/oschrenk/noteplan", branch: "main"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/noteplan/releases/download/v0.2.1/noteplan-darwin-amd64"
      sha256 "c37f46d64d705993ed9f416d449ad72b15416cd017eab9676af978c503ca14e9"

      def install
        bin.install "noteplan-darwin-amd64" => "noteplan"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/noteplan/releases/download/v0.2.1/noteplan-darwin-arm64"
      sha256 "5a1e5d16334b2e90d87a5590d27bd011021573895cdda9e9da9f0d52126278d5"

      def install
        bin.install "noteplan-darwin-arm64" => "noteplan"
      end
    end
  end
end
