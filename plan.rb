class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.8.1/plan-darwin-arm64"
      sha256 "82f01a5136c40b5f52e655576d78885b92425e2fc65ac99197a81e71e7c9c855"

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
