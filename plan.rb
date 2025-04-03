class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "61a5f32445a9f897641395c23be18fc647de457a21c4dc09b0a30d6909d7ba63"

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
