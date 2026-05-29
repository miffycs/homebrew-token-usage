# Homebrew Cask for token-usage.
#
# After each release, bump `version` and update `sha256` with the hash of the new
# token-usage.app.zip — grab the .sha256 asset from the GitHub release, or run
# `shasum -a 256 token-usage.app.zip`.

cask "token-usage" do
  version "0.2.0"
  sha256 "21c035e3cef677885b1b64792a2fcd4ade639f688b3b6ca74c80da8e4c6072bc"

  url "https://github.com/miffycs/token-usage/releases/download/v#{version}/token-usage.app.zip"
  name "Token Usage"
  desc "Live Claude Code and Codex token usage in the macOS menu bar"
  homepage "https://github.com/miffycs/token-usage"

  depends_on macos: ">= :monterey"

  app "token-usage.app"

  zap trash: [
    "~/.usage",
    "~/Library/LaunchAgents/io.miffy.token-usage.plist",
    "~/Library/Logs/usage",
  ]
end
