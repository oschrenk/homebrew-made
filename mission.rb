class Mission < Formula
  desc "Count markdown todos"
  homepage "https://github.com/oschrenk/mission"
  license "APL"
  head "https://github.com/oschrenk/mission", branch: "main"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/mission/releases/download/v0.1.1/mission-darwin-amd64"
      sha256 "44f96b338a374e2103901d2a1822d042ed2a3991bfa9c18db39f989853c4035b"

      def install
        bin.install "mission-darwin-amd64" => "mission"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/mission/releases/download/v0.1.1/mission-darwin-arm64"
      sha256 "bbf07e92c34b324605258e27c864491559f0c365e61c41459b62a496f093d4a7"

      def install
        bin.install "mission-darwin-arm64" => "mission"
      end
    end
  end
end
