class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "APL"
  head "https://github.com/oschrenk/sessionizer/releases/tag/v0.4", branch: "main"
  version "0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.4/sessionizer-darwin-amd64"
      sha256 "0f21050876b0be7629fd8beb71ff68420cb923fe4a32c1b0d154090ce3241c41"
      def install
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v0.4/sessionizer-darwin-arm64"
      sha256 "923db5a03363e64b95dd2983aa86dfa3ec499ad68ec39b6898d6ed4309a743b2"
      def install
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
      end
    end
  end
end
