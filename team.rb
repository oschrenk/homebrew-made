class Team < Formula
  desc "Inter-agent messaging for Claude Code sessions on macOS"
  homepage "https://github.com/oschrenk/team"
  license "MIT"
  head "https://github.com/oschrenk/team.git", branch: "main"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/team/releases/download/#{version}/team-darwin-amd64"
      sha256 "662f1fcb3d34d5b464d9f120c2eb4f7e1efacd5a4474eb3b70dcc1b5c6d66ba7"
      def install
        chmod "+x", "team-darwin-amd64"
        bin.install "team-darwin-amd64" => "team"
        generate_completions_from_executable(bin/"team", shell_parameter_format: :cobra)
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/team/releases/download/#{version}/team-darwin-arm64"
      sha256 "06c90db22d856739c4ce465e25e6cfcf8c38c1d75b6588d0b46a6c89daeeefe6"
      def install
        chmod "+x", "team-darwin-arm64"
        bin.install "team-darwin-arm64" => "team"
        generate_completions_from_executable(bin/"team", shell_parameter_format: :cobra)
      end
    end
  end

  def caveats
    <<~EOS
      Run once to set up the launchd user agent that runs the bus:

        team service install

      Then install the Claude Code skill (see install docs for plugin vs
      standalone options): https://github.com/oschrenk/team/blob/main/docs/install.md
    EOS
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/team version"))
  end
end
