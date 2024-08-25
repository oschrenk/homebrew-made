class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.7.0/plan-darwin-arm64"
      sha256 "6fbfce3a9c8b86c8d106523bbd6c2e205b4c12bb4701ea5fd2e46a17b097e1aa"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
