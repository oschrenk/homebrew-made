class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v0.2.2/mission-darwin-amd64"
      sha256 "ab92d262713d0a3508961fe912ca4476cdcbb4ebf5e5a0905125fb0b788ccf3e"

      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v0.2.2/mission-darwin-arm64"
      sha256 "ee8271038ea0e78104a236a94648cf82a3c3eb0a3b8d7395350c7f25b6fc9a91"

      def install
        bin.install "mission-darwin-arm64" => "mission"
      end
    end
  end

  service do
    run ["#{opt_bin}/mission", "watch"]
    keep_alive true
    process_type :interactive
    log_path "#{var}/log/mission/mission.out.log"
    error_log_path "#{var}/log/mission/mission.err.log"
  end
end
