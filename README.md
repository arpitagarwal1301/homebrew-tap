# Homebrew Tap for Wardlume

Install [Wardlume](https://github.com/arpitagarwal1301/wardlume) — a macOS menu-bar ward for botsitting your AI agents:

```sh
brew tap arpitagarwal1301/tap
brew install --cask wardlume
```

This installs from the release `.pkg`, so the app opens without the Gatekeeper "damaged" prompt — no `xattr` step needed.

> If your Homebrew is configured to require tap trust and refuses with an "untrusted tap" error, run `brew trust arpitagarwal1301/tap` once and re-install.
