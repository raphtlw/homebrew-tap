# raphtlw/tap

Custom [Homebrew tap](https://github.com/Homebrew/brew/blob/master/docs/Taps.md) which contains formulae which are modified or created by me.

### Usage

Tap this repository:
```
brew tap raphtlw/tap
```

Install whatever you need:
```
brew install m1necraft
```

### Packages

- [m1necraft](https://github.com/raphtlw/m1necraft): command line tool for installing Minecraft for M1 chips.

### Development

Generate sha256 hash:
```
$ shasum -a 256 <file>
```

Test formula:
```
$ brew test --debug ./Formula/<formula>.rb
```
