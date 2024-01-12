class Noteplan < Formula
  desc "Count noteplan todos"
  homepage "https://github.com/oschrenk/noteplan"
  license "APL"
  head "https://github.com/oschrenk/noteplan", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/noteplan/releases/download/v0.1/noteplan-darwin-arm64"
      sha256 "df20667bcc660a0308146e9050a8d180748ac866306fd0feeaa30f10986816f7"

      def install
        bin.install "noteplan-darwin-arm64" => "noteplan"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/noteplan/releases/download/v0.1/noteplan-darwin-amd64"
      sha256 "c72f21f8c2d481e1fdb1e25bbc28a2039c637c40a987258f0c8cca132d1d5b7c "

      def install
        bin.install "noteplan-darwin-amd64" => "noteplan"
      end
    end
  end
end
