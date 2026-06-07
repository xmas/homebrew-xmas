cask "sandshell" do
  version "0.15.0"
  sha256 "903ba4d7e29053a5e72637d6ac0d5ab9c534f4dc9071c2f5e7d76d0d547bbb70"

  url "https://github.com/xmas/homebrew-xmas/releases/download/v#{version}/Sandshell_0.15.0_aarch64.dmg"
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
