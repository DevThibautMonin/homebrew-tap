cask "opengit" do
  version "1.0.2"
  sha256 "dbd173a323bd3a882acbfb72e316dd05019fa2894ae8550b87e016bd41ce2c8b"

  url "https://github.com/DevThibautMonin/open_git/releases/download/v#{version}/OpenGit-#{version}.dmg"
  name "OpenGit"
  desc "OpenGit is a modern desktop Git client designed to provide a clear, visual Git experience, while remaining powerful enough for everyday development workflows."
  homepage "https://github.com/DevThibautMonin/open_git"

  depends_on macos: ">= :catalina"

  app "OpenGit.app"

  uninstall quit: "com.thibautmonin.opengit"

  zap trash: [
    "~/Library/Application Support/OpenGit",
    "~/Library/Preferences/com.thibautmonin.opengit.plist",
    "~/Library/Caches/com.thibautmonin.opengit"
  ]
end
