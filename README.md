# homebrew-crofty

**This tap is archived. crofty is no longer distributed through Homebrew.**
The last version published here is v0.17.2, and it will not be updated.

## Install crofty instead from

- **macOS / Linux, terminal:** `curl -fsSL https://crofty.site/install.sh | sh`
- **macOS, click installer:** the `crofty.pkg` attached to the
  [latest release](https://github.com/ShiroDoromoto/crofty/releases/latest)
- **Windows:** the `crofty-setup.exe` on the same page

See <https://crofty.site> for the full instructions, including what to do when
the OS warns you about an unsigned installer.

## Already installed from this tap?

```sh
brew uninstall crofty
brew untap ShiroDoromoto/crofty
curl -fsSL https://crofty.site/install.sh | sh
```

`crofty update` prints the same steps if you get there first.

## Why

The tap existed to be the terminal user's route onto macOS and Linux, and to
pull Hugo in as a dependency. `install.sh` serves the first purpose on every
OS, and the click installers now bundle Hugo, which retires the second. This
repository stays up, and stays archived, so that nobody's `brew upgrade` fails
on a missing tap.
