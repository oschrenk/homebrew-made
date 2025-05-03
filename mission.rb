class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v#{version}/mission-darwin-amd64"
      sha256 "06fd29166359bf02d15c73e93662ccb1cee40281568c51490f6e9bc921857711"
      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v#{version}/mission-darwin-arm64"
      sha256 "e5edd0f795d6a7163d522ac2d3fecd180cb7165632fa7044a412508301a66167"

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
