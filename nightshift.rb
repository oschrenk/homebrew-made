class Nightshift < Formula
  desc "Control Night Shift settings from CLI"
  homepage "https://github.com/oschrenk/mightshift.swift"
  url "https://github.com/oschrenk/nightshift.swift/archive/refs/tags/v0.1.tar.gz"
  license "MIT"
  sha256 "d21d59b5bcc00fb9039ae2eed27470e5935323789a6c926ac1846eba86581957"
  head "https://github.com/oschrenk/nightshift.swift", branch: "main"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/nightshift'
  end
end
