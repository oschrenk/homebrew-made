class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.8.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.8.3/plan-darwin-arm64"
      sha256 "de5a672aeabb2c96d9c0293c509b559f8412d6dc6f5f3600ebd4dbc693382a0a"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
