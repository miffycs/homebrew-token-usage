# Homebrew Cask for menubar-usage.
#
# After each release, bump `version` and update `sha256` with the hash of the new
# menubar-usage.app.zip — grab the .sha256 asset from the GitHub release, or run
# `shasum -a 256 menubar-usage.app.zip`.

cask "menubar-usage" do
  version "0.1.0"
  sha256 "ab56fc203a33f4499709285001fc93523ecef8abda823c446b0cb13f9e2d17bb"

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
