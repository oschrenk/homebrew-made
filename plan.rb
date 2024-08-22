class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.5.3/plan-darwin-arm64"
      sha256 "713a5eaba63e33eafb7f6cbaa1c9b5f4d5e446020e747b0ce2d6d42f862c9ee4"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
