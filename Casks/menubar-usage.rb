# Homebrew Cask for menubar-usage.
#
# To publish: create a separate "tap" repo at github.com/miffycs/homebrew-menubar-usage,
# drop this file into its `Casks/` folder, then users can install with:
#   brew install miffycs/menubar-usage/menubar-usage
#
# After each release, update `version` and replace the sha256 placeholder with the
# real hash of menubar-usage.app.zip (get it with `shasum -a 256 menubar-usage.app.zip`).

cask "menubar-usage" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
