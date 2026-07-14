class Arbol < Formula
  desc "Git repository manager"
  homepage "https://github.com/oschrenk/arbol"
  license "MIT"
  head "https://github.com/oschrenk/arbol", branch: "main"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/arbol/releases/download/v#{version}/arbol-darwin-arm64"
      sha256 "bca6c45dc3da6ac41d4db6686c2b28e1c05f70e457e07475e68a27923abbae93"

      def install
        chmod "+x", "arbol-darwin-arm64"
        bin.install "arbol-darwin-arm64" => "arbol"
        generate_completions_from_executable(bin/"arbol", shell_parameter_format: :cobra)
      end
    end
  end
end
