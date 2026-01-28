class Infuse < Formula
  desc "Git repository manager"
  homepage "https://github.com/oschrenk/infuse"
  license "MIT"
  head "https://github.com/oschrenk/infuse", branch: "main"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/infuse/releases/download/v#{version}/infuse-darwin-arm64"
      sha256 "9714db57d083e7b6bb1b03388ff544e1381bf770a9c6764c49742802040eab15"

      def install
        chmod "+x", "infuse-darwin-arm64"
        bin.install "infuse-darwin-arm64" => "infuse"
      end
    end
  end
end
