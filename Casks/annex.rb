cask "annex" do
  version "1.2.2"
  sha256 "418645962181e22a898ebf320fee6c86d2cab433f2bf2501cb24bd487273fb4b"

  url "https://github.com/ClassroomAdventure/ca-annex/releases/download/v#{version}/Annex-mac.zip"
  name "Annex"
  desc "Use an Android device as an extra display"
  homepage "https://classroomadventure.github.io/ca-annex/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Annex.app"

  uninstall quit: "com.classroomadventure.annex"

  zap trash: "~/Library/Preferences/com.classroomadventure.annex.plist"

  caveats <<~EOS
    Annex needs the Annex app on your Android device:
      https://classroomadventure.github.io/ca-annex/

    To connect over USB, also install Android platform tools:
      brew install --cask android-platform-tools
  EOS
end
