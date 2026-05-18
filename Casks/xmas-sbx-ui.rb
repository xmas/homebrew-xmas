cask "xmas-sbx-ui" do
  version "0.5.0"
  sha256 "64832addfbf5a3e888f5680915df9570cf79088ecad170563db29d2cfb7dae5f"

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
