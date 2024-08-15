class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.4.3/plan-darwin-arm64"
      sha256 "ab2a150ead947b5d87e6302573a029f5eda47d4d5e006e2d4dffbcce62d5386b"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
