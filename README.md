# Homebrew Tap for Wardlume

Install [Wardlume](https://github.com/arpitagarwal1301/wardlume) — a macOS menu-bar ward for botsitting your AI agents:

```sh
brew tap arpitagarwal1301/tap
brew trust arpitagarwal1301/tap   # one-time, required for third-party taps on Homebrew 6+
brew install --cask wardlume
```

This installs from the release `.pkg`, so the app opens without the Gatekeeper "damaged" prompt — no `xattr` step needed.
