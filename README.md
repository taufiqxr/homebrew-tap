# taufiqxr/homebrew-tap

Homebrew tap for [NightOwl](https://github.com/taufiqxr/NightOwl) 🦉 — the
macOS menu bar app that keeps your Mac awake **even with the lid closed,
no external display needed**.

## Install

```bash
brew install --cask taufiqxr/tap/nightowl
```

NightOwl is ad-hoc signed (not notarized), so if macOS blocks the first
launch, right-click NightOwl.app → Open once — or skip the quarantine
flag at install time:

```bash
brew install --cask --no-quarantine taufiqxr/tap/nightowl
```

## What's in the tap

| Cask | Description |
|---|---|
| `nightowl` | Keep your Mac awake with the lid closed — with a low-battery guard, live server/tunnel monitoring, and a Claude Code session switcher |

The cask version is bumped automatically by NightOwl's release script.
