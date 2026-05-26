cask "xmas-sbx-ui" do
  version "0.14.11"
  sha256 "88c9e98f337600db9ddc161c75230e07a8fac1a73590203d7d0ef506dad38a9b"

  url "https://github.com/xmas/homebrew-xmas/releases/download/v#{version}/Sandshell_0.14.11_aarch64.dmg"
  name "Sandshell"
  desc "Sandshell GUI for Docker Sandboxes (sbx)"
  homepage "https://github.com/xmas/homebrew-xmas"

  app "Sandshell.app"

  zap trash: [
    "~/Library/Application Support/com.xmas.sbx-ui",
    "~/Library/Caches/com.xmas.sbx-ui",
    "~/Library/Preferences/com.xmas.sbx-ui.plist",
  ]
end
