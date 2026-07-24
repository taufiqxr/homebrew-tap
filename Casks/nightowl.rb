cask "nightowl" do
  version "1.11.1"
  sha256 "2ffa3beb49f59f94970f127ee0fa719fcd984a737d04793c8ae385f6f587ced3"

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
