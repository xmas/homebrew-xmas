cask "xmas-sbx-ui" do
  version "0.9.0"
  sha256 "dd318a5a7a1d41538f30b17c562625f7bce5f7f0143de54c029956e14bf2b4ec"

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
