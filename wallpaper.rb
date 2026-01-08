class Wallpaper < Formula
  desc "Set macOS wallpaper"
  homepage "https://github.com/oschrenk/wallpaper.swift"
  license "MIT"
  head "https://github.com/oschrenk/wallpaper.swift", branch: "main"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/wallpaper.swift/releases/download/v#{version}/wallpaper-#{version}.tar.gz"
      sha256 "af91e3b1656c48272aa71852ad541700ace39da625ac8536427c3fa406adeb3a"

      def install
        bin.install "wallpaper-darwin-arm64" => "wallpaper"
      end
    end
  end
end
