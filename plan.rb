class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.5.2/plan-darwin-arm64"
      sha256 "1d2ab0fb411d706a99c57c6ba46c2c5515fa28431a4b410640740d2e459e5e3e"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
