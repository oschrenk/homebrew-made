class Sessionizer < Formula
  desc "Tmux session manager"
  homepage "https://github.com/oschrenk/sessionizer"
  license "MIT"
  head "https://github.com/oschrenk/sessionizer", branch: "main"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-amd64"
      sha256 "c013151892373cfd32725f3e8d35c57f47872d01ece9a2f43a981864c66e7008"
      def install
        chmod "+x", "sessionizer-darwin-amd64"
        bin.install "sessionizer-darwin-amd64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/sessionizer/releases/download/v#{version}/sessionizer-darwin-arm64"
      sha256 "61f4541fa8cea885d5990989f0ebdb018d7746a8728512237922758e2535b33a"
      def install
        chmod "+x", "sessionizer-darwin-arm64"
        bin.install "sessionizer-darwin-arm64" => "sessionizer"
        generate_completions_from_executable(bin/"sessionizer", shell_parameter_format: :cobra)
      end
    end
  end
end
