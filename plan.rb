class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.11.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-darwin-arm64"
      sha256 "e9e7fa9fbf6dcc172c09fb5532f7dc77330fb20d54653bb6327a7592fc45176b"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
