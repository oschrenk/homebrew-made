class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "73e14b7298ddc6bc6b6c1de07ce250c2b13e866abf0566619be400df6b5042a7"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
