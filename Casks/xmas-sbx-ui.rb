cask "xmas-sbx-ui" do
  version "0.4.0"
  sha256 "2c8f737f52683e382f2172cdb653b7ced123e384801303a23f25bb0354eafb61"

  url "https://github.com/xmas/homebrew-xmas/releases/download/v#{version}/sbx-ui_#{version}_aarch64.dmg"
  name "Docker Sandboxes"
  desc "GUI for Docker Sandboxes (sbx)"
  homepage "https://github.com/xmas/homebrew-xmas"

  app "sbx-ui.app"

  zap trash: [
    "~/Library/Application Support/com.xmas.sbx-ui",
    "~/Library/Caches/com.xmas.sbx-ui",
    "~/Library/Preferences/com.xmas.sbx-ui.plist",
  ]
end
