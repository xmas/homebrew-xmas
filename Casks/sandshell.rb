cask "sandshell" do
  version "0.14.20"
  sha256 "c8bc43b2bddda75ae9f40bf0ac7ada36c6ee5a43ef2cb109bae6c18aeb5091d9"

  url "https://github.com/xmas/homebrew-xmas/releases/download/v#{version}/Sandshell_0.14.20_aarch64.dmg"
  name "Sandshell"
  desc "Sandshell GUI for Docker Sandboxes (sbx)"
  homepage "https://github.com/xmas/homebrew-xmas"

  app "Sandshell.app"

  zap trash: [
    "~/Library/Application Support/com.xmas.sandshell",
    "~/Library/Caches/com.xmas.sandshell",
    "~/Library/Preferences/com.xmas.sandshell.plist",
  ]
end
