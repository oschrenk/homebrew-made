class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "MIT"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-amd64"
      sha256 "9f87716c7cef669643fb083d4f1cd3c63ddea42bfabd7c0a2e137ec6bbd14c2b"
      def install
        chmod "+x", "sessionizer-darwin-amd64"
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-arm64"
      sha256 "8f69e5ef47dd7587bb085dc20b583ee3fc12f1ee57317a0f056c21b1a3823c18"
      def install
        chmod "+x", "sessionizer-darwin-arm64"
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
  end
end
