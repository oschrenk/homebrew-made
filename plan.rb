class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "6e74cd10408be234e4cbcdd903496fe15186a162971f2a0ce99bc50439417f5d"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end

  service do
    run [opt_bin/"plan", "watch"]
    keep_alive true
    log_path var/"log/plan.log"
    error_log_path var/"log/plan.log"
  end
end
