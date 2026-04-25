# homebrew-bucket

Bucket for my apps

## Homebrew

### Install

```
brew tap logonoff/homebrew-bucket
```

### Available Casks

| Cask | Source |
|---|---|
| `superopt` | [logonoff/superopt](https://github.com/logonoff/superopt) |

## How it works

Upstream repos trigger a `repository_dispatch` event on release. The [sync workflow](.github/workflows/sync.yml) downloads each file listed in [`apps.json`](apps.json) and commits them to this repo.
