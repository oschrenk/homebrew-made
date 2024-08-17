class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.5.1/plan-darwin-arm64"
      sha256 "1837e2019665caee6b103648a1b92e8b3912e85dcc100f7d16a6bf8508bead8d"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
