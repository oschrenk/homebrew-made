class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.1.0/plan-darwin-arm64"
      sha256 "eb87ee0af3afbb20d7b40baedfcc95cc90679d20c333ea147d5c48d1b10aeec0"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
