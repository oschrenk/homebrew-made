class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.12.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "727f8e02df709a0d01799a0f5f926efef02683d3bc9bda09b2f52d70e15fc5fe"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
