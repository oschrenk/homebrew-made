class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "APL"
  head "https://github.com/oschrenk/sessionizer/releases/tag/v0.1", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.1/sessionizer-darwin-arm64"
      sha256 "80846254b4086a56716d5a06d44cdf7ddc993b56759a64c8c9ffd74e17b7a6ba"

      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.1/sessionizer-darwin-amd64"
      sha256 "ec9b2482d49f71d61cf429ceb22b630bd896d14b6572486fa881d72c93be1802"

      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
  end
end
