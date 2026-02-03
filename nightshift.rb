class Nightshift < Formula
  desc "Control Night Shift settings from CLI"
  homepage "https://github.com/oschrenk/nightshift.swift"
  version "0.1.1"
  url "https://github.com/oschrenk/nightshift.swift/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"
  sha256 "ddc8fb6093db212108b36046b64a3d1124251e9412f0f0512547bbf1f3050f96"
  head "https://github.com/oschrenk/nightshift.swift", branch: "main"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/nightshift'
    generate_completions_from_executable(bin/"nightshift", "--generate-completion-script")
  end
end
