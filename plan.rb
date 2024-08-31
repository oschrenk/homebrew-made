class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.8.0/plan-darwin-arm64"
      sha256 "5e1b791130c1b8e71e98668ca99fc2d6ee24e7d52ad9b0b27a04c09bc17c5984"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end

  service do
    run ["#{opt_bin}/plan", "watch"]
    keep_alive true
    process_type :interactive
    log_path "#{var}/log/plan/plan.out.log"
    error_log_path "#{var}/log/plan/plan.err.log"
  end
end
