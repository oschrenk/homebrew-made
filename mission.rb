class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v#{version}/mission-darwin-amd64"
      sha256 "6daef5e88eb8a52c76bce37abb6df2e725b976673694ec055b575f753533235d"

      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v#{version}/mission-darwin-arm64"
      sha256 "e2d8a253e87db657ec6e734d7bb3c9480e45e62c4963e75d120fc98ec641b5dd"

      def install
        bin.install "mission-darwin-arm64" => "mission"
      end
    end
  end

  service do
    run [opt_bin/"mission", "watch"]
    keep_alive true
    log_path var/"log/mission.out.log"
    error_log_path var/"log/mission.err.log"
  end
end
