class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "6dd2c7e4fc01b6f27b9dd0e4c217ea728e43b0af87c2340c94ca4a41c4b367b2"

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
