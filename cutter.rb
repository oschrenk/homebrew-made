class Cutter < Formula
  desc "Extract cookies (from Safari)"
  homepage "https://github.com/oschrenk/cutter"
  license "MIT"
  head "https://github.com/oschrenk/cutter", branch: "main"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/cutter/releases/download/v#{version}/cutter-darwin-arm64"
      sha256 "16c9e39621a80c48ba96c9f66996917ea0e1880520114dc81825a7cc25c37244"
      def install
        chmod "+x", "cutter-darwin-arm64"
        bin.install "cutter-darwin-arm64" => "cutter"
        generate_completions_from_executable(bin/"cutter", shell_parameter_format: :cobra)
      end
    end
  end
end
