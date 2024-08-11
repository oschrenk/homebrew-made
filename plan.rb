class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.3.0/plan-darwin-arm64"
      sha256 "31445ad666eba8a69b32d09276fd508a303b591b16d4b3cb0760f08eb30de27a"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
