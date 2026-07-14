class Arbol < Formula
  desc "Git repository manager"
  homepage "https://github.com/oschrenk/arbol"
  license "MIT"
  head "https://github.com/oschrenk/arbol", branch: "main"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/arbol/releases/download/v#{version}/arbol-darwin-arm64"
      sha256 "812d7b0e06523c3439cebb8bde79cba389b1ee319b188136151aa690070e39f1"

      def install
        chmod "+x", "arbol-darwin-arm64"
        bin.install "arbol-darwin-arm64" => "arbol"
        generate_completions_from_executable(bin/"arbol", shell_parameter_format: :cobra)
      end
    end
  end
end
