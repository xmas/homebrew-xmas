cask "sandshell" do
  version "0.14.19"
  sha256 "55f0fedde36eabe527839e1c6edbc1881eaed432e3404a6006bb42fb9ad6b26d"

  url "https://github.com/xmas/homebrew-xmas/releases/download/v#{version}/Sandshell_0.14.19_aarch64.dmg"
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
