class Plan < Formula
  desc "Calendar app companion to fetch the next event"
  homepage "https://github.com/oschrenk/plan.swift"
  license "MIT"
  head "https://github.com/oschrenk/plan.swift", branch: "main"
  version "0.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/plan.swift/releases/download/v#{version}/plan-#{version}.tar.gz"
      sha256 "3578cdfb8e122171db98696230ecca816015d087aed57f296f17275fb191f5a0"

      def install
        chmod "+x", "plan-darwin-arm64"
        bin.install "plan-darwin-arm64" => "plan"
        generate_completions_from_executable(bin/"plan", "--generate-completion-script")
      end
    end
  end
end
