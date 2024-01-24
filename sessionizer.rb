class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "APL"
  head "https://github.com/oschrenk/sessionizer/releases/tag/v0.2", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.2/sessionizer-darwin-arm64"
      sha256 "94537b5fac7e8830f6869242824b9646897acc9c56bde069638f2c1624c51b43"

      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.2/sessionizer-darwin-amd64"
      sha256 "9bd05d2e4cf3027f528374debb23fd679ebf6f858fe4efcba1a7c23144cc7496"

      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
  end
end
