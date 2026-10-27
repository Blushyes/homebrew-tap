# Blushyes Homebrew Tap

Install [Reef](https://github.com/Blushyes/reef), a terminal workspace for browsing files,
reviewing diffs, and committing changes:

```sh
brew install blushyes/tap/reef
```

Supports macOS and Linux on ARM64 and x86-64. The formula installs the prebuilt
release binary, including its embedded remote agent, and provides both `reef` and `rf`.
Video previews require `ffmpeg` (`brew install ffmpeg`).

Upgrade:

```sh
brew update
brew upgrade reef
```

## Maintenance

The [Reef release workflow](https://github.com/Blushyes/reef/blob/main/.github/workflows/release.yml)
updates `Formula/reef.rb` after uploading a stable release. The formula generator
computes SHA-256 checksums from all four published archives.

To synchronize an existing release, run **Update Homebrew tap** in the Reef
repository's Actions tab and supply the release tag, for example `v0.44.1`.
The workflow uses the `HOMEBREW_TAP_DEPLOY_KEY` secret in `Blushyes/reef`, paired
with a write-enabled deploy key on this repository.

Pushes and pull requests run installation checks on macOS ARM64 and Linux x86-64.

```sh
brew test blushyes/tap/reef
```
