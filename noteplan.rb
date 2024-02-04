class Noteplan < Formula
  desc "Count noteplan todos"
  homepage "https://github.com/oschrenk/noteplan"
  license "APL"
  head "https://github.com/oschrenk/noteplan", branch: "main"
  version "0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/noteplan/releases/download/v0.2/noteplan-darwin-arm64"
      sha256 "c7140e2786008e62817fa142e71d4d47ab61fd9eb84da81e9f17f0c548175261"

      def install
        bin.install "noteplan-darwin-arm64" => "noteplan"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/noteplan/releases/download/v0.2/noteplan-darwin-amd64"
      sha256 "06e876553767c75a36a2137d4b0f7d3c6d9ced9c76b51828451de171a5a0fc0e"

      def install
        bin.install "noteplan-darwin-amd64" => "noteplan"
      end
    end
  end
end
