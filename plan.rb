class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.6.0/plan-darwin-arm64"
      sha256 "6dee57994021d1cc9cf1680d2393415b5b13c509447ff1407f686a3988664a72"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
