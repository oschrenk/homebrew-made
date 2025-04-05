class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.12.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "ad825e610fee8b0af712081518cab85633fa4516ede3aadc0fe01643868ad5e5"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
