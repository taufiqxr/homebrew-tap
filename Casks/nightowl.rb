cask "nightowl" do
  version "1.12.0"
  sha256 "4fb7ef5110177274c8a39a3219ca0a577c254123174c8d3356b4ddff4f4b2dfe"

  url "https://github.com/taufiqxr/NightOwl/releases/download/v#{version}/NightOwl-#{version}.zip"
  name "NightOwl"
  desc "Menu bar app that keeps your Mac awake even with the lid closed"
  homepage "https://github.com/taufiqxr/NightOwl"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NightOwl.app"

  uninstall quit: "com.nightowl.app"

  caveats <<~EOS
    NightOwl is ad-hoc signed, not notarized (no paid Apple developer
    account). If macOS blocks the first launch, either right-click
    NightOwl.app -> Open once, or install with:

      brew install --cask --no-quarantine taufiqxr/tap/nightowl

    Mode changes ask for your admin password: pmset disablesleep is a
    root-level power switch. What runs as root is documented here:
    https://github.com/taufiqxr/NightOwl#how-it-works-and-what-runs-as-root

    Full uninstall (removes the Smart Auto daemon and restores normal
    sleep) is ./uninstall.sh in the repo; `brew uninstall` alone removes
    only the app.
  EOS
end
