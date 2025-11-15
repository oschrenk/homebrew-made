class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "MIT"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-amd64"
      sha256 "15aec5c057ce550e16b32a09d9f157f993003662959ae8b01fd8f943d9ceeb05"
      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-arm64"
      sha256 "b8312bc48ceb10e5ede6a3d027d4bcf7a52349987fefdbe5effeecf1055e9c86"
      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
  end
end
