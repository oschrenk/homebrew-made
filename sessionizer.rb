class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "MIT"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-amd64"
      sha256 "bc2a28da7c5add6f7bd95adff68ae1433674291569974cd98c7ecf022ab1878c"
      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-arm64"
      sha256 "97417e40c1a29ffeff4b689ef5428cacb1f127343273b8396cafa7d39425f863"
      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
  end
end
