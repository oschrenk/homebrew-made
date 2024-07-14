class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v0.3.1/mission-darwin-amd64"
      sha256 "17c4bb17aebd61ca99659204ee04178af370263046f268f78e5b87348442d2f6"

      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v0.3.1/mission-darwin-arm64"
      sha256 "3ea274e9dfcba0562c9555b36f1e4c45af92569bc7800109f8b7f3f23e244b2a"

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
