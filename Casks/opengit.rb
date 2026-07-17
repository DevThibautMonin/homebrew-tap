cask "opengit" do
  version "1.2.0"
  sha256 "619b5e95cb8a33677865a48e977f435ff492a5ae2b9472a0458c0fc9a134e794"

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
