# Homebrew Cask for menubar-usage.
#
# After each release, bump `version` and update `sha256` with the hash of the new
# menubar-usage.app.zip — grab the .sha256 asset from the GitHub release, or run
# `shasum -a 256 menubar-usage.app.zip`.

cask "menubar-usage" do
  version "0.1.0"
  sha256 "2b332ca60611da0d8d209d47c0882b8c040731e1729dea2af2db3579a474fde1"

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
