class Wallpaper < Formula
  desc "Set macOS wallpaper"
  homepage "https://github.com/oschrenk/wallpaper.swift"
  license "MIT"
  head "https://github.com/oschrenk/wallpaper.swift", branch: "main"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/wallpaper.swift/releases/download/v#{version}/wallpaper-#{version}.tar.gz"
      sha256 "4cf5c1cd7c4262898efe56c16c29c932270cf929007c9ce8dc772e65e40092bb"

      def install
        bin.install "wallpaper-darwin-arm64" => "wallpaper"
      end
    end
  end
end
