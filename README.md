# Homebrew Tap

Install Arpit Agarwal's macOS apps from release `.pkg` files.

> Homebrew 6+ requires trusting a third-party tap once before installing from it —
> that's the `brew trust` line below. On older Homebrew the command doesn't exist
> and isn't needed; just skip it.

## HoverAsk

[HoverAsk](https://github.com/arpitagarwal1301/hoverask) is a native macOS floating voice assistant for CLI, local, and BYOK AI providers.

```sh
brew tap arpitagarwal1301/tap
brew trust arpitagarwal1301/tap
brew install --cask hoverask
```

## Wardlume

[Wardlume](https://github.com/arpitagarwal1301/wardlume) is a macOS menu-bar ward for botsitting your AI agents:

```sh
brew tap arpitagarwal1301/tap
brew trust arpitagarwal1301/tap
brew install --cask wardlume
```

These casks install from release `.pkg` files, so apps open without the Gatekeeper "damaged" prompt that can appear with unsigned `.dmg` downloads. No `xattr` step is needed.
