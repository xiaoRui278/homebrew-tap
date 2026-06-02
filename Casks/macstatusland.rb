cask "macstatusland" do
  version "2.0.0"
  sha256 "089d2e26edd6ae965df4ac592680aad4a3b7e7a112174f4a29d97d8633dd5d5e"

  url "https://github.com/xiaoRui278/mac-status-land/releases/download/v#{version}/MacStatusLand-v#{version}.dmg"
  name "MacStatusLand"
  desc "macOS menu bar app to manage status bar icons hidden by the notch"
  homepage "https://github.com/xiaoRui278/mac-status-land"

  depends_on macos: ">= :ventura"

  app "MacStatusLand.app"

  zap trash: [
    "~/Library/Preferences/com.xiaorui.MacStatusLand.plist",
  ]
end
