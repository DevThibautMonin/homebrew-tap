cask "opengit" do
  version "1.0.4"
  sha256 "7036f67ca4a65dc4a9c6ad3ab04906882f13c1477bc6d0cac0af315dd6564ef9"

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
