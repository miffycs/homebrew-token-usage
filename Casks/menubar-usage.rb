# Homebrew Cask for menubar-usage.
#
# After each release, bump `version` and update `sha256` with the hash of the new
# menubar-usage.app.zip — grab the .sha256 asset from the GitHub release, or run
# `shasum -a 256 menubar-usage.app.zip`.

cask "menubar-usage" do
  version "0.1.0"
  sha256 "9972d1d77a5f526b0779292f8ab35c1c51e8716b70243107adf0bfb3157b430d"

  url "https://github.com/miffycs/menubar-usage/releases/download/v#{version}/menubar-usage.app.zip"
  name "Menubar Usage"
  desc "Live Claude Code and Codex token usage in the macOS menu bar"
  homepage "https://github.com/miffycs/menubar-usage"

  depends_on macos: ">= :monterey"

  app "menubar-usage.app"

  zap trash: [
    "~/.usage",
    "~/Library/LaunchAgents/io.miffy.menubar-usage.plist",
    "~/Library/Logs/usage",
  ]
end
