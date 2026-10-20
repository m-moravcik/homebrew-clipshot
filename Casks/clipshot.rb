# Homebrew cask for ClipShot.
#
# Install:
#   brew install --cask m-moravcik/clipshot/clipshot
#
# The cask Homebrew installs. scripts/release.sh in the ClipShot repository
# writes version and sha256 here on every release; ClipShot keeps a reference
# copy under Casks/.
#
# The release ZIP is Developer ID signed, notarized and stapled. A copy installed
# by this cask never updates itself: Homebrew owns its updates
# (`brew upgrade --cask clipshot`), and the app says so in Settings > About.
cask "clipshot" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/m-moravcik/ClipShot/releases/download/v#{version}/ClipShot-#{version}.zip"
  name "ClipShot"
  desc "Copies every screenshot to the clipboard and keeps the file"
  homepage "https://github.com/m-moravcik/ClipShot"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "ClipShot.app"

  uninstall quit: "sk.moravcik.ClipShot"

  # ClipShot's own files only. The macOS screenshot settings it changed stay as
  # they are: use Settings > Capture > Restore previous settings before
  # uninstalling to put them back.
  zap trash: [
    "~/Library/Application Support/ClipShot",
    "~/Library/Caches/sk.moravcik.ClipShot",
    "~/Library/HTTPStorages/sk.moravcik.ClipShot",
    "~/Library/Logs/clipshot.log",
    "~/Library/Logs/clipshot.log.1",
    "~/Library/Preferences/sk.moravcik.ClipShot.plist",
  ]
end
