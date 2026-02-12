class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "MIT"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-amd64"
      sha256 "4df4d6ab4a68d508b066f229d5b557497807255f215b2ed4d6adeb72c9d96307"
      def install
        chmod "+x", "sessionizer-darwin-amd64"
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-arm64"
      sha256 "bf9eadbd0215677b47b4c4a4f7444b9f10b9ee472b8bfc7495bbfdaf73f392a3"
      def install
        chmod "+x", "sessionizer-darwin-arm64"
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
  end
end
