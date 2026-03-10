# Taylor Finklea Homebrew Tap

Install Spotlight Caffeinate with:

```bash
brew install --cask TaylorFinklea/tap/spotlight-caffeinate
```

If Gatekeeper blocks launch because the app is not notarized, remove quarantine and try again:

```bash
xattr -dr com.apple.quarantine "/Applications/Spotlight Caffeinate.app"
```
