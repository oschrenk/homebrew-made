class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "99c227929e93c31d9391b6b113b7c204348b063fa817f9b3a8646388327c5e60"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
