class Keyboard < Formula
  desc "Get/Set keyboard brightness of Macbooks"
  homepage "https://github.com/oschrenk/keyboard.swift"
  url "https://github.com/oschrenk/keyboard.swift/archive/0.1.tar.gz"
  license "MIT"
  sha256 "b1adbcde06f8ba1e49ac69dd4877218210e142eac53ac96931ea23357ee9028c"
  head "https://github.com/oschrenk/keyboard.swift", branch: "main"


  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/keyboard'
  end
end
