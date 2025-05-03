class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v#{version}/mission-darwin-amd64"
      sha256 "892e4f720ecee5917799af4cc5f83f26f2d616029c3711be8557bd74bb7beb15"
      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v#{version}/mission-darwin-arm64"
      sha256 "70891844cee18e19b7893f9834e64e8afbb9a20b7b8561a3cbf4647de3eda900"

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
