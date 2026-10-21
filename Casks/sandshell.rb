cask "sandshell" do
  # version and sha256 are rewritten by xmas/sandshell's scripts/release.sh.
  version "0.2.37"
  sha256 "b4f394e159612ab86c85464a373938edb91b683f8180b92e947569166cd26dbc"

  url "https://github.com/xmas/homebrew-xmas/releases/download/sandshell-v#{version}/Sandshell-#{version}.dmg"
  name "Sandshell"
  desc "Finder-style GUI for Docker Sandboxes (sbx) with built-in terminals"
  homepage "https://github.com/xmas/homebrew-xmas"

  # Tags in this repo are namespaced: sandshell-v<version> (native app) vs the
  # older v<version> tags (Tauri app, see xmas-sbx-ui).
  livecheck do
    url :url
    regex(/^sandshell-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  conflicts_with cask: "xmas-sbx-ui"
  depends_on arch: :arm64
  depends_on cask: "docker/tap/sbx"
  depends_on macos: :golden_gate

  app "Sandshell.app"
  # The `sandshell` CLI opens a folder as a workspace (sandshell://open).
  binary "#{appdir}/Sandshell.app/Contents/Resources/sandshell"

  # The app is ad-hoc signed and not notarized, so Gatekeeper would refuse the
  # quarantined copy. Installing it via this tap is the trust decision.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Sandshell.app"]
  end

  zap trash: [
    "~/.sandshell",
    "~/Library/Application Support/com.xmas.sandshell",
    "~/Library/Caches/com.xmas.sandshell",
    "~/Library/HTTPStorages/com.xmas.sandshell",
    "~/Library/Preferences/com.xmas.sandshell.plist",
    "~/Library/Saved Application State/com.xmas.sandshell.savedState",
  ]

  caveats <<~EOS
    Sandshell is not code-signed or notarized yet. The installer removed the
    quarantine flag so it opens normally; if macOS still refuses, right-click
    Sandshell.app and choose Open once.

    Sign in to Docker Sandboxes before first use:
      sbx login
  EOS
end
