cask "mcawake" do
  version "1.12.0"
  sha256 "4fb7ef5110177274c8a39a3219ca0a577c254123174c8d3356b4ddff4f4b2dfe"

  url "https://github.com/taufiqxr/McAwake/releases/download/v#{version}/McAwake-#{version}.zip"
  name "McAwake"
  desc "Menu bar app that keeps your Mac awake even with the lid closed"
  homepage "https://github.com/taufiqxr/McAwake"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "McAwake.app"

  uninstall quit: "com.mcawake.app"

  caveats <<~EOS
    McAwake is ad-hoc signed, not notarized (no paid Apple developer
    account), so this download is quarantined and macOS will block the
    first launch. Either right-click McAwake.app -> Open once, or clear
    the flag:

      xattr -dr com.apple.quarantine /Applications/McAwake.app

    (Homebrew removed --no-quarantine in 6.0, with no replacement.)

    Mode changes ask for your admin password: pmset disablesleep is a
    root-level power switch. What runs as root is documented here:
    https://github.com/taufiqxr/McAwake#how-it-works-and-what-runs-as-root

    Full uninstall (removes the Smart Auto daemon and restores normal
    sleep) is ./uninstall.sh in the repo; `brew uninstall` alone removes
    only the app.
  EOS
end
