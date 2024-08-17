class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.5.0/plan-darwin-arm64"
      sha256 "f90e24d801c63fb511a57e756a306725ad3a5378c69761f786b45e74e0d1d152"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
