cask "macstatusland" do
  version "1.0.0"
  sha256 "bcf3edf6c53ba875eaa9588dba76ebbbe7410b0b85cf3a5d2cd4441e67423eac"

  url "https://github.com/xiaoRui278/mac-status-land/releases/download/v#{version}/MacStatusLand-v#{version}.dmg"
  name "MacStatusLand"
  desc "macOS menu bar app to manage status bar icons hidden by the notch"
  homepage "https://github.com/xiaoRui278/mac-status-land"

  depends_on macos: :ventura

  app "MacStatusLand.app"

  zap trash: [
    "~/Library/Preferences/com.xiaorui.MacStatusLand.plist",
  ]
end
