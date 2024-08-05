class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v0.4.2/mission-darwin-amd64"
      sha256 "0e8a488ba620cf01fe595bd5b50f5eda1f1083cc52de10f05c0449206824ff09"

      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v0.4.2/mission-darwin-arm64"
      sha256 "96592458237a236b6d9529090dba01784daefa9414b1d44844619f2a7789011e"

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
