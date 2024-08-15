class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.4.1/plan-darwin-arm64"
      sha256 "186045aa6749ef59473a2d9f6a796307ef9327c3c1c5696cc3c754808dc8e6df"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
