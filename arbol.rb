class Arbol < Formula
  desc "Git repository manager"
  homepage "https://github.com/oschrenk/arbol"
  license "MIT"
  head "https://github.com/oschrenk/arbol", branch: "main"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/arbol/releases/download/v#{version}/arbol-darwin-arm64"
      sha256 "edb185c552db6e2e3c42e4aa0879e8a86700bf43d856ac1674878ab2f5f606af"

      def install
        chmod "+x", "arbol-darwin-arm64"
        bin.install "arbol-darwin-arm64" => "arbol"
        generate_completions_from_executable(bin/"arbol", shell_parameter_format: :cobra)
      end
    end
  end
end
