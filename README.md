# Homebrew HashiCorp

A centralized repository for HashiCorp-related brews.

## Requirements

* [Homebrew](https://github.com/Homebrew/brew)
* Yosemite, El Capitan, and Sierra. Untested everywhere else.

## Installation

Run the following in your command-line:

```sh
$ brew tap cultivatedops/homebrew-hashicorp
```

## Bugs happen

The more information you provide and the more detailed your report is, the easier it is for us to fix it.
An example of the best practice(s) for filling out bug reports can be seen here: https://github.com/cultivatedops/homebrew-hashicorp/issues/1225.

Please refer to [this section](#filing-bug-reports) for more information.

## Common Issues

Bugs inevitably happen - none of us are running EVERY conceivable setup - but hopefully the install process can be made smoother through the following tips:

- If you have recently upgraded your macOS version or Xcode, read [this section](#common-upgrade-issues).
- Upgrade your macOS to the latest patch version. So if you are on `10.9.0`, upgrade to `10.9.2` etc.
- Ensure Xcode is installed and up to date.
- Run `brew update`. If you tapped an old version of `homebrew-hashicorp` or have an old brew installation, this may cause some installation issues.
- Run `brew upgrade`. This will upgrade all installed formulae. Sometimes an old version of a formula is installed and this breaks our dependency management. Unfortunately, there is currently no way to force Homebrew to upgrade only those we depend upon. This is a possible fix for those with `libxml` related compilation issues.
- If `brew doctor` complains about `Error: Failed to import: homebrew-hashicorp-requirement` or similar, you can find broken PHP requirement files using `find $(brew --prefix)/Library/Formula -type l -name "*requirement.rb"`. Run this with the `-delete` flag if you are sure the results of the find contain only the files producing import failures. You can also remove them manually.
- If you upgraded to Mavericks 10.9.x, please also upgrade to the latest Xcode, 5.0.1 and make sure you re-install Command Line Tools: `xcode-select --install`
- On Mavericks 10.9.x, if  `xcode-select --install` displays the error message `Can't install the software because it is not currently available from the Software Update server.`, download Command Line Tools from [Apple Developer]( https://developer.apple.com/downloads/index.action?name=Command%20Line%20Tools).
![Xcode 5 command line tool installation](http://i.imgur.com/BKde0XJ.jpg)
- If you are using Xcode 4, install the `Command Line Tools`. If you think you have them installed, please ensure that an update of Xcode or macOS did not remove them. You can verify this by launching Xcode, opening preferences, going to the Downloads tab, and clicking the `Install` button:
![command line tool installation](http://f.cl.ly/items/411X3k0m2O1p1U2Y0I30/Image%202012.11.15%2011:32:41%20AM.png)
- Delete your `~/.pearrc` file before attempting to install a `PHP` version, as the pear step will fail if an existing, incompatible version exists. We try to detect and remove them ourselves, but sometimes this fails.
- Run `brew doctor` and fix any issues you can.
- If you are using Mountain Lion `10.8.x`, please install [XQuartz](https://www.xquartz.org/) so that the `png.h` header exists for compilation of certain brews. Mountain Lion removes X11, which contained numerous headers. A permanent fix is forthcoming.
- If you upgraded to Mountain Lion `10.8.x`, please also upgrade to the latest Xcode, 5.1.
- File an awesome bug report, using the information in the next section.
- If you have a failing install due to `GD build test failed`, try running the following before attempting to reinstall:

```sh
brew rm freetype jpeg libpng gd zlib
brew install freetype jpeg libpng gd zlib
```

Doing all of these might be a hassle, but will more than likely ensure you either have a working install or get help as soon as possible.

## Common upgrade issues

If you have recently upgraded your macOS version or Xcode, you may have some compilation or missing libraries issues. The following information may help you solve most of the problems:

- Ensure you have properly upgraded CLT depending on your Xcode version.
- Proceed step by step to isolate the responsible formula. If you need to install `php56` and `php56-imagick`, don't do `brew install php56 php56-imagick`. Just do `brew install php56`, ensure everything is working as expected, check the output of `phpinfo()`, restart your Apache server with `sudo apachectl restart`. Then you can install the next formula `brew install php56-imagick`.
- If `php53`, `php55` or `php56` build fails, remove all their dependencies and reinstall the formula. For instance: If `brew install php56` fails, do the following: `brew rm php56 && brew deps php56 | xargs brew rm`. If `brew install php56 --with-gmp` fails, do the following: `brew rm php56 && brew deps php56 --with-gmp | xargs brew rm`. Then reinstall a clean version of the formula: `brew update && brew upgrade && brew install php56`.
- If an extension build fails, try also to remove all its dependencies and reinstall it.
- Sometimes it appears that a formula is not available anymore, do the following: `brew tap --repair`.

### Filing Bug Reports

An example of the best practice(s) for filling out bug reports can be seen here: https://github.com/Homebrew/homebrew-hashicorp/issues/1225.

Please include the following information in your bug report:

- macOS Version: eg. 10.7.3, 10.6.3
- Homebrew Version: `brew -v`
- PHP Version in use: stock-apple, homebrew-hashicorp stable, homebrew-hashicorp devel, homebrew-hashicorp head, custom
- Xcode Version: 4.4, 4.3, 4.0, 3 etc.
  - If you are on Mountain Lion `10.8.x`, please also upgrade to the latest Xcode, 4.4.
  - If you are using 4.3, verify whether you have the `Command Line Tools` installed as well.
  - If on Snow Leopard, you may want to install the [`OS X GCC Installer`](https://github.com/kennethreitz/osx-gcc-installer/).
- Output of `gcc -v`
- Output of `php -v`
- Installation logs for the formula in question
  - A link to the gist created with `brew gist-logs <formula-you-are-using>` will contain these logs.
  - Or, if `brew gist-logs` is not working:
    - Output of `brew install -v path/to/homebrew-hashicorp/the-formula-you-want-to-test.rb --with-your --opts-here` within a [gist](https://gist.github.com). Please append any options you added to the `brew install` command.
    - Output of `brew doctor` within a [gist](https://gist.github.com)

New bug reports will be created with a template of this information for you to fill in.


This will help us diagnose your issues much quicker, as well as find similarities between different reported issues.

## Background

This repository contains **PHP-related** formulae for [Homebrew](https://github.com/Homebrew/brew).

(This replaces the PHP formulae that used to live under [adamv's homebrew-alt repository](https://github.com/adamv/homebrew-alt).)

The purpose of this repository is to allow PHP developers to quickly retrieve working, up-to-date formulae. The mainline Homebrew repositories are maintained by non-php developers, so testing/maintaining PHP-related brews has fallen by the wayside. If you are a PHP developer using Homebrew, please contribute to this repository.

## Usage

**Note:** For a list of available configuration options run:

```sh
$ brew options php56
```

Once the tap is installed, you can install `php53`, `php54`, `php55`, `php56`, `php70`, `php71`, `php72`, or any formulae you might need via:

```sh
$ brew install php56
```

That's it!

Please also follow the instructions from `brew info` at the end of the install to ensure you properly installed your PHP version.

### Installing Multiple Versions

Using multiple PHP versions from `homebrew-hashicorp` is pretty straightforward.

If using Apache, you will need to update the `LoadModule` call. For convenience, simply comment out the old PHP version:

```
# /etc/apache2/httpd.conf
# Swapping from PHP 5.5 to PHP 5.6
# $HOMEBREW_PREFIX is normally `/usr/local`
# LoadModule php5_module    $HOMEBREW_PREFIX/Cellar/php55/5.5.18/libexec/apache2/libphp5.so
LoadModule php5_module    $HOMEBREW_PREFIX/Cellar/php56/5.6.4/libexec/apache2/libphp5.so
```

If using FPM, you will need to unload the `plist` controlling php, or manually stop the daemon, via your command line:

```sh
# Swapping from PHP 5.5 to PHP 5.6
# $HOMEBREW_PREFIX is normally `/usr/local`
$ cp $HOMEBREW_PREFIX/Cellar/php56/5.6.4/homebrew.mxcl.php56.plist ~/Library/LaunchAgents/
$ launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist
$ launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist
```

If you would like to swap the PHP you use on the command line, you should update the `$PATH` variable in either your `.profile`, `.zshrc`, `.bashrc` or `.bash_profile`:

```
# Swapping from PHP 5.5 to PHP 5.6
# export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
```

Please be aware that you must make this type of change EACH time you swap between PHP `minor` versions. You will typically only need to update the Apache/FPM when upgrading your PHP `patch` version.

### PEAR Extensions

Pear is no longer compiled by default, instead you need to install php with the `--with-pear` option, such as: `brew install php56 --with-pear`.

Please note that all extensions installed with the included `pear` will be installed to the respective php's bin path. For example, supposing you installed `PHP_CodeSniffer` as follows:

```sh
$ pear install PHP_CodeSniffer
```

It would be nice to be able to use the `phpcs` command via command-line, or other utilities. You will need to add the installed php's `bin` directory to your path. The following would be added to your `.bashrc` or `.bash_profile` when running the `php56` brew:

```sh
export PATH="$(brew --prefix php56)/bin:$PATH"
```

Some caveats:

- Remember to use the proper PHP version in that export. So if you installed the `php55` formula, use `php55` instead of `php56` in the export.
- Updating your installed PHP will result in the binaries no longer existing within your path. In such cases, you will need to reinstall the pear extensions. Alternatives include installing `pear` outside of `homebrew-hashicorp` or using the `homebrew-hashicorp` version of your extension.
- Uninstalling your `homebrew-hashicorp` PHP formula will also remove the extensions.

## Contributing

See [Contributing](CONTRIBUTING.md)

## Todo

- [x] Proper PHP Versioning? See issue [#8](https://github.com/homebrew/homebrew-hashicorp/issues/8)
- [x] Pull out all PHP-related brews from Homebrew

## License

See [LICENSE](LICENSE).
