class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v0.5.1/mission-darwin-amd64"
      sha256 "a5692e9c2e538d60cd4faf68d8480b16a73d2eea43da297ae5bf7d43abded83b"

      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v0.5.1/mission-darwin-arm64"
      sha256 "caef9fdd073276fe658eb0f69b32b2a649468c6b71d9d9090d370a8fee64fff3"

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
