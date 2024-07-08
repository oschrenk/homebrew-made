class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v0.3.0/mission-darwin-amd64"
      sha256 "da310ff2d3f22ab5af743eae81d8c46a897349b0a3ab0dee448cbd9cd9f84eae"

      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v0.3.0/mission-darwin-arm64"
      sha256 "b28829c31316a41b886501029756375fa8ce1c712cc3d2f4ab84baf65cad3ef3"

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
