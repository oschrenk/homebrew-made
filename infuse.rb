class Infuse < Formula
  desc "Git repository manager"
  homepage "https://github.com/oschrenk/infuse"
  license "MIT"
  head "https://github.com/oschrenk/infuse", branch: "main"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/infuse/releases/download/v#{version}/infuse-darwin-arm64"
      sha256 "9ba1c2a91e0900e5b7c4eaf3244cbf34e198a6a7e43715c6de1949dc11b178ee"

      def install
        chmod "+x", "infuse-darwin-arm64"
        bin.install "infuse-darwin-arm64" => "infuse"
        generate_completions_from_executable(bin/"infuse", shell_parameter_format: :cobra)
      end
    end
  end
end
