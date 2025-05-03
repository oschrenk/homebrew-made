class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v#{version}/mission-darwin-amd64"
      sha256 "cc7a452595e356249167e3fb32ab60ea1b04e429b879186d12d51fc939ec2e7a"
      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v#{version}/mission-darwin-arm64"
      sha256 "58868648ece855bdba07447eb0859f064e9f71ce2e3a45d60773cdd21927c206"

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
