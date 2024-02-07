class Noteplan < Formula
  desc "Count noteplan todos"
  homepage "https://github.com/oschrenk/noteplan"
  license "APL"
  head "https://github.com/oschrenk/noteplan", branch: "main"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oschrenk/noteplan/releases/download/v0.2.3/noteplan-darwin-amd64"
      sha256 "f535c1e7bfc3f0bb5a72aa7b3439d06b7568358c9b2f775caae0868b12207f61"

      def install
        bin.install "noteplan-darwin-amd64" => "noteplan"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oschrenk/noteplan/releases/download/v0.2.3/noteplan-darwin-arm64"
      sha256 "9e2b44dbbddd525ba05a070edf16788793593ff6fff641b920f43599d17dbf05"

      def install
        bin.install "noteplan-darwin-arm64" => "noteplan"
      end
    end
  end
end
