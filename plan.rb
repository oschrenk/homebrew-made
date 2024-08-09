class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.2.0/plan-darwin-arm64"
      sha256 "e3d3c1c15b55eb714a7050c26d29f545d068ed020d8a7bd6d13116942ed64a9c"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
