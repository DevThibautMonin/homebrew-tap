cask "opengit" do
  version "1.0.6"
  sha256 "e9a45a702afbe7700831b0ac6dfe26053d8067d2ad1145317d6678db1e4db472"

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
