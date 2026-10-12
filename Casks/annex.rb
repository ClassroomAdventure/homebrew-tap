cask "annex" do
  version "1.2.3"
  sha256 "029bbe2f913cd39bc14d42d9b286c0dcb3c8ef82ab9ddca3193f7a9d21894ead"

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
