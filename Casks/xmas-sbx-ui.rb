cask "xmas-sbx-ui" do
  version "0.12.0"
  sha256 "0af92e2d05df7667330ba5e4bda3ae1e67b7347fbe8744ab4e6f412151dbdd01"

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
