cask "agate" do
  # version and sha256 are rewritten by xmas/Agate's Scripts/release.sh.
  version "0.1.12"
  sha256 "af0dbd965c657d7d09e46a750d493a5e1818f220103e15e7f1f9054f0d26156a"

  url "https://github.com/xmas/homebrew-xmas/releases/download/agate-v#{version}/Agate-#{version}.dmg"
  name "Agate"
  desc "Meeting notes to artifacts, with a GTD inbox and connectors through agents"
  homepage "https://github.com/xmas/homebrew-xmas"

  # Tags in this repo are namespaced: agate-v<version>, beside sandshell-v<version>.
  livecheck do
    url :url
    regex(/^agate-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Agate.app"
  # The agate command-line tool reads the same store as the app.
  binary "#{appdir}/Agate.app/Contents/Helpers/agate"

  # The store in ~/Library/Group Containers/9D24V83V64.dev.agate is never
  # zapped: the TestFlight Agate reads the same one.
  zap trash: [
    "~/Library/Caches/com.xmas.agatepro",
    "~/Library/HTTPStorages/com.xmas.agatepro",
    "~/Library/Saved Application State/com.xmas.agatepro.savedState",
  ]

  caveats <<~EOS
    This is the same app as the TestFlight Agate, without the App Sandbox, and
    it reads the same store. If the TestFlight copy is in /Applications, quit
    it and move it to the Trash before installing; your data stays where it is.

    For Claude Code in Agate's own Docker sandbox:
      brew install --cask docker/tap/sbx
      sbx login
  EOS
end
