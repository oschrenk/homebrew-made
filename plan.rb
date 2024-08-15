class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v0.4.0/plan-darwin-arm64"
      sha256 "f132394e9be3be32e6f14e388be3b4cf50f9191e6d8c4acab2147f4c5bdd1f31"

      def install
        bin.install "plan-darwin-arm64" => "plan"
      end
    end
  end
end
