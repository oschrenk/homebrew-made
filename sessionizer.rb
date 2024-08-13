class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "APL"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.7/sessionizer-darwin-amd64"
      sha256 "0b9f3c30ddc63df4e4a3c2e0bc42bc277c4cc300723c90441850163c130ed2f8"
      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.7/sessionizer-darwin-arm64"
      sha256 "5df0244d37158275c308515994101a17fd50927da0b39353e9e66d7f9bae500c"
      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
  end
end
