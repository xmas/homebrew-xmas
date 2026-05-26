cask "sandshell" do
  version "0.14.16"
  sha256 "647b3cedda331265fe6cc15a3e0f8277156e93444f7ede2b7816c0b1537e5ad6"

  url "https://github.com/xmas/homebrew-xmas/releases/download/v#{version}/Sandshell_0.14.16_aarch64.dmg"
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
