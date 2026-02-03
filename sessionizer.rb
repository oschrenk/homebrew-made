class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "MIT"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-amd64"
      sha256 "aa89d9682c121e7466346261ded27b0f2b3616d5a0b7726fd11cc6d80d54f88e"
      def install
        chmod "+x", "sessionizer-darwin-amd64"
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-arm64"
      sha256 "7425a1eedfe9504755064117999c6788927662d02e0a507a63dc0ab2caa1efd2"
      def install
        chmod "+x", "sessionizer-darwin-arm64"
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
  end
end
