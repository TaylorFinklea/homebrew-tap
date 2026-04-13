# Taylor Finklea Homebrew Tap

Install LayerKeys with:

```bash
brew install --cask TaylorFinklea/tap/layerkeys
```

Install Spotlight Caffeinate with:

```bash
brew install --cask TaylorFinklea/tap/spotlight-caffeinate
```

If Gatekeeper blocks launch because an app is not notarized, remove quarantine and try again:

```bash
xattr -dr com.apple.quarantine "/Applications/LayerKeys.app"
xattr -dr com.apple.quarantine "/Applications/Spotlight Caffeinate.app"
```
