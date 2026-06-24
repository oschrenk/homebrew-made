cask "font-battery-mono" do
  version "1.0.0"
  sha256 "37f9870642e0670befbbe2e1c4e53816cf8262754b96f97e48477f3b3e320d58"

  url "https://github.com/oschrenk/progress-font/releases/download/v#{version}/BatteryMono.ttf"
  name "BatteryMono"
  desc "Per-percentage battery glyph font for SketchyBar"
  homepage "https://github.com/oschrenk/progress-font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "BatteryMono.ttf"
end
