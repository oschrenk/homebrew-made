class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "ac681f74dd144cbc78067d4807b31a6c2fb73b60011032dbbe324fb165278d15"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
