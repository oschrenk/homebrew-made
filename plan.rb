class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.8.2/plan-darwin-arm64"
      sha256 "2bc4d84633a8cad1ba9cb8d89ae0f5dc492ecc1b34817fdfa7878de5136baf61"

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
