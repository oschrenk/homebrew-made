class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "MIT"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.12.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-amd64"
      sha256 "2cc500190a925a568393878c4e209c9569645e2637f9fa47ad60ce1d16870c8c"
      def install
        chmod "+x", "sessionizer-darwin-amd64"
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-arm64"
      sha256 "4b4a07832adc5c03eacc1efd7f589323c7beeaa50a0b2f369ecca30787108e02"
      def install
        chmod "+x", "sessionizer-darwin-arm64"
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
  end
end
