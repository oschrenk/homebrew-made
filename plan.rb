class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "0213381e967f91de3c21802810347c9ada657dd66141e652a1687ef9d7815c13"

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
