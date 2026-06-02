cask "macstatusland" do
  version "2.0.0"
  sha256 "4e7e9e99911c7678fdb1e72f0f2721f47c7ab3118d78652d7e6e99ecf285b3dc"

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
