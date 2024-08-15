class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.4.2/plan-darwin-arm64"
      sha256 "631c77145108d75ba6fca006c6647aa8689c33cd99af8bb8b401019a125b8e59"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
