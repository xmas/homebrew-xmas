cask "xmas-sbx-ui" do
  version "0.7.2"
  sha256 "0da0cde4518548dbd7f60ea3943e5bfaa260b53d30ae1bb54355236cb5dbe6a8"

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
