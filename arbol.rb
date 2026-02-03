class Arbol < Formula
  desc "Git repository manager"
  homepage "https://github.com/oschrenk/arbol"
  license "MIT"
  head "https://github.com/oschrenk/arbol", branch: "main"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/arbol/releases/download/v#{version}/arbol-darwin-arm64"
      sha256 "99a26a213746388a8ca06c380756c769e4471a1a269cbd9dce2ff9ed992dd84c"

      def install
        chmod "+x", "arbol-darwin-arm64"
        bin.install "arbol-darwin-arm64" => "arbol"
        generate_completions_from_executable(bin/"arbol", shell_parameter_format: :cobra)
      end
    end
  end
end
