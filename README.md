# m-moravcik/homebrew-clipshot

Homebrew tap for [ClipShot](https://github.com/m-moravcik/ClipShot), the macOS menu bar
app that puts every screenshot on the clipboard and keeps the file too.

```sh
brew install --cask m-moravcik/clipshot/clipshot
```

Upgrade with `brew upgrade --cask clipshot`. A copy installed this way leaves updates to
Homebrew and never updates itself.

The cask is updated by ClipShot's `scripts/release.sh` on every release (version and
sha256). A reference copy with the same content lives in the ClipShot repository under
`Casks/`.
