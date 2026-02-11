class Infuse < Formula
  desc "Git repository manager"
  homepage "https://github.com/oschrenk/infuse"
  license "MIT"
  head "https://github.com/oschrenk/infuse", branch: "main"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/infuse/releases/download/v#{version}/infuse-darwin-arm64"
      sha256 "829d4d9fa00a892e3c1cb0a2dec8ad88d67c2b3f33f9a2c33b5467bfecafe857"

      def install
        chmod "+x", "infuse-darwin-arm64"
        bin.install "infuse-darwin-arm64" => "infuse"
        generate_completions_from_executable(bin/"infuse", shell_parameter_format: :cobra)
      end
    end
  end
end
