class Cutter < Formula
  desc "Extract cookies (from Safari)"
  homepage "https://github.com/oschrenk/cutter"
  license "MIT"
  head "https://github.com/oschrenk/cutter", branch: "main"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/cutter/releases/download/v#{version}/cutter-darwin-arm64"
      sha256 "de00f963758573384b8def6ddcbc39b686f2948a1a6c47a07c5891e43a0a70b1"
      def install
        bin.install "cutter-darwin-arm64" => "cutter"
      end
    end
  end
end
