class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "APL"
  head "https://github.com/oschrenk/sessionizer/releases/tag/v0.6", branch: "main"
  version "0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.6/sessionizer-darwin-amd64"
      sha256 "2acd0025c813a39d016669e5789c966787db14db037ca4760e10d394fa465e07"
      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.6/sessionizer-darwin-arm64"
      sha256 "f97ec80e46efa62987663672e88e448b632b2fd5395056a938a8f654b9d0bca8"
      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
  end
end
