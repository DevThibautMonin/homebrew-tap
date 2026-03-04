cask "opengit" do
  version "1.1.0"
  sha256 "bc09a2490a17fdb60601c7b3526626db2c947e656542e072fcc944633a12b78c"

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
