class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "APL"
  head "https://github.com/oschrenk/sessionizer/releases/tag/v0.5", branch: "main"
  version "0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.5/sessionizer-darwin-amd64"
      sha256 "b5a532f87abd6ae1cf43f4478bae2e4e40fd9c7262f331f70e37787d57b87cb4"
      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.5/sessionizer-darwin-arm64"
      sha256 "155635511222f0508627f3bfe344020fbcc0607c364ba0f87f35107ae1bdd7d9"
      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
  end
end
