class Wallpaper < Formula
  desc "Set macOS wallpaper"
  homepage "https://github.com/oschrenk/wallpaper.swift"
  license "MIT"
  head "https://github.com/oschrenk/wallpaper.swift", branch: "main"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/wallpaper.swift/releases/download/v#{version}/wallpaper-#{version}.tar.gz"
      sha256 "458afb464a535e854ef2da8ac51554694e140f3416e51af94f589564425bc1cd"

      def install
        bin.install "wallpaper-darwin-arm64" => "wallpaper"
        generate_completions_from_executable(bin/"wallpaper", "--generate-completion-script")
      end
    end
  end
end
