class Team < Formula
  desc "Inter-agent messaging for Claude Code sessions on macOS"
  homepage "https://github.com/oschrenk/team"
  license "MIT"
  head "https://github.com/oschrenk/team.git", branch: "main"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/team/releases/download/#{version}/team-darwin-amd64"
      sha256 "f89febaf7987253e6997f54e4ce0360a7c43a1b29596897faa7aa10fb5f4e74d"
      def install
        chmod "+x", "team-darwin-amd64"
        bin.install "team-darwin-amd64" => "team"
        generate_completions_from_executable(bin/"team", shell_parameter_format: :cobra)
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/team/releases/download/#{version}/team-darwin-arm64"
      sha256 "f7276d5e5806733250b2d783eebca6cf911fe6f98487ea06709d8583bab33aba"
      def install
        chmod "+x", "team-darwin-arm64"
        bin.install "team-darwin-arm64" => "team"
        generate_completions_from_executable(bin/"team", shell_parameter_format: :cobra)
      end
    end
  end

  service do
    run [opt_bin/"team", "server"]
    keep_alive true
    log_path var/"log/team.out.log"
    error_log_path var/"log/team.err.log"
  end

  def caveats
    <<~EOS
      Start the bus:

        brew services start team

      Then install the Claude Code skill (see install docs for plugin vs
      standalone options): https://github.com/oschrenk/team/blob/main/docs/install.md

      Alternative (no brew services): run `team service install` to set up
      a self-managed launchd agent. Do not run both — they'd conflict on
      port 9473.
    EOS
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/team version"))
  end
end
