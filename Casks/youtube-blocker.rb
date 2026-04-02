cask "youtube-blocker" do
  version "1.2.0-beta.1"
  sha256 "2682f0e0e01477b9feb3319a0198042ebeec59f2d5ad619f152ece86d21eebe1"

  url "https://github.com/zoott28354/Youtube-Blocker/releases/download/v#{version}/YouTubeBlocker_1.1.4_aarch64.dmg"
  name "YouTube Blocker"
  desc "Desktop app to block websites at system level, built for parents"
  homepage "https://github.com/zoott28354/Youtube-Blocker"

  depends_on macos: ">= :catalina"

  app "YouTubeBlocker.app"

  zap trash: [
    "/Library/Managed Preferences/com.google.Chrome.plist",
    "/Library/Managed Preferences/com.microsoft.Edge.plist",
    "/Library/Managed Preferences/com.brave.Browser.plist",
    "/Library/Managed Preferences/com.vivaldi.Vivaldi.plist",
    "/Library/Managed Preferences/com.operasoftware.Opera.plist",
    "/Library/Managed Preferences/org.chromium.Chromium.plist",
    "/etc/pf.anchors/com.youtubeblocker",
  ]

  caveats <<~EOS
    YouTube Blocker requires administrator privileges to modify the hosts file,
    firewall rules, and browser policies. You will be prompted for your password
    when launching the app.
  EOS
end
