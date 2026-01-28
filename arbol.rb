class Arbol < Formula
  desc "Git repository manager"
  homepage "https://github.com/oschrenk/arbol"
  license "MIT"
  head "https://github.com/oschrenk/arbol", branch: "main"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/arbol/releases/download/v#{version}/arbol-darwin-arm64"
      sha256 "97f1b3ccacaf6fa1e0709e03478e28c86f8bbf679dc2b1bdb319727f183f180a"

      def install
        chmod "+x", "arbol-darwin-arm64"
        bin.install "arbol-darwin-arm64" => "arbol"
        generate_completions_from_executable(bin/"arbol", "completion", shells: [:fish])
      end
    end
  end
end
