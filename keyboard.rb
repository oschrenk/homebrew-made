class Keyboard < Formula
  desc "Get/Set keyboard brightness of Macbooks"
  homepage "https://github.com/oschrenk/keyboard.swift"
  url "https://github.com/oschrenk/keyboard.swift/archive/v0.1.1.tar.gz"
  license "MIT"
  sha256 "1d77c277663a502cddccdebf56ad1711b9aecc45a49eb6194c57c6477c3a8873"
  head "https://github.com/oschrenk/keyboard.swift", branch: "main"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/keyboard'
    generate_completions_from_executable(bin/"keyboard", "--generate-completion-script")
  end
end
