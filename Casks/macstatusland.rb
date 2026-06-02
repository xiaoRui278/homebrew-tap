cask "macstatusland" do
  version "2.0.0"
  sha256 "3f792aa9357114a693664456ad8a77e79d159d66fe84b1bea138606556b98bb9"

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
