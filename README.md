# Classroom Adventure Homebrew tap

```sh
brew install --cask classroomadventure/tap/annex
```

| Cask | |
|---|---|
| `annex` | [Annex](https://github.com/ClassroomAdventure/ca-annex) — use an Android device as an extra display for your Mac |

## 更新のしかた（メンテナ向け）

各アプリの repo のリリース用スクリプトが `Casks/<name>.rb` の `version` と `sha256` を書き換えて push する
（Annex: `ca-annex/scripts/update-homebrew.sh <version>`）。
