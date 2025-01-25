class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.8.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.8.4/plan-darwin-arm64"
      sha256 "6a4a5f3f6bdebb0a833045383c3ff67a018da1969d70b5e24a8fe1f5203032a3"

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
