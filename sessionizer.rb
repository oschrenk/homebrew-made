class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "MIT"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-amd64"
      sha256 "66b768dce5397930de9e8e47be0af36fbbe1dc81f90d36d62855af7b72bd45a2"
      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-arm64"
      sha256 "934c6a14f71f921b406d90e5a467b7ca8b0d814fc8746fcc7d9606ba9ddc8597"
      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
  end
end
