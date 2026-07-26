# taufiqxr/homebrew-tap

Homebrew tap for [McAwake](https://github.com/taufiqxr/McAwake) 🦉 — the
macOS menu bar app that keeps your Mac awake **even with the lid closed,
no external display needed**.

## Install

```bash
brew install --cask taufiqxr/tap/mcawake
```

McAwake is ad-hoc signed (not notarized), so Homebrew's download is
quarantined and macOS blocks the first launch. Either right-click
McAwake.app → Open once, or clear the flag afterwards:

```bash
xattr -dr com.apple.quarantine /Applications/McAwake.app
```

Homebrew removed `--no-quarantine` in 6.0 (deprecated in 5.0) with no
replacement, so this is a post-install step now rather than an install
flag. Homebrew also plans to
[end support for casks that fail Gatekeeper](https://github.com/Homebrew/brew/issues/20755)
on 2026-09-01; until McAwake is notarized, the
[`.pkg` installer](https://github.com/taufiqxr/McAwake/releases) is the
more durable option.

## What's in the tap

| Cask | Description |
|---|---|
| `mcawake` | Keep your Mac awake with the lid closed — with a low-battery guard, live server/tunnel monitoring, and a Claude Code session switcher |

The cask version is bumped automatically by McAwake's release script.
