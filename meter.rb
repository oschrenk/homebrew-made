class Meter < Formula
  desc "Check Claude usage limits"
  homepage "https://github.com/oschrenk/meter"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/meter/releases/download/v#{version}/meter-darwin-arm64"
      sha256 "87215c63f42ae33f7122b414946380ed692b83739f6e95c0b483736863360a4e"

      def install
        chmod "+x", "meter-darwin-arm64"
        bin.install "meter-darwin-arm64" => "meter"
        generate_completions_from_executable(bin/"meter", shell_parameter_format: :cobra)
      end
    end
  end
end
