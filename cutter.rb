class cutter < Formula
  desc "Extract cookies (from Safari)"
  homepage "https://github.com/oschrenk/cutter"
  license "APL"
  head "https://github.com/oschrenk/cutter", branch: "main"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/cutter/releases/download/v0.1.0/cutter-darwin-amd64"
      sha256 "d19547974f0e14d67420338f86ac9d5debab5bf9cf998631f71343209e0d79e8"
      def install
        bin.install "cutter-darwin-amd64" => "cutter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/cutter/releases/download/v0.1.0/cutter-darwin-arm64"
      sha256 "12d00f73a0ba60048072ded8298e8ed122ec41eb97687a0db03e40287d78f257"
      def install
        bin.install "cutter-darwin-arm64" => "cutter"
      end
    end
  end
end
