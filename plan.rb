class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.12.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-#{version}.tar.gz"
      sha256 "5bbfa708f38c0377eca91bf549d6067b42e19b0b2bf14f81f7d0ae0b20d5760e"

      def install
        bin.install "plan-darwin-arm64" => "plan"
        fish_completion.install "Completions/plan.fish"
      end
    end
  end
end
