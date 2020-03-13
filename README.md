# Homebrew: HashiCorp

> Homebrew Tap for HashiCorp Suite of Tools

## Table of Contents

- [Homebrew: HashiCorp](#homebrew-hashicorp)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Usage](#usage)
    - [Installing a Cask](#installing-a-cask)
    - [Installing a Formula](#installing-a-formula)
  - [Contributing](#contributing)
    - [Adding or Updating Casks](#adding-or-updating-casks)
  - [Notes](#notes)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

- [Homebrew](https://github.com/Homebrew/brew)
- macOS Mojave or macOS Catalina

## Usage

Install this repository using the [brew tap](https://docs.brew.sh/Taps#the-brew-tap-command) command:

```sh
brew tap operatehappy/homebrew-hashicorp
```

Once the tap is installed, you will have access to the following applications and versions

- Casks
  - Vagrant `>= 1.8.0` and `<= 2.2.7`

### Installing a Cask

Once the Tap is installed, you can use the [brew cask install](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap#installing) commands to install a Cask:

```sh
brew cask install product@X.Y.Z
```

For example, to install _Vagrant 1.8.0_  you would use the following:

```sh
brew cask install vagrant@1.8.0
```

### Installing a Formula

TODO

## Contributing

This repository includes _helpers_ that assist with the generation of _Cask_ and _Formula_ files.

Both Casks and Formula generators source `helpers/VERSIONS.sh` for rendering of the templates available in `helpers/templates`

Start by editing `helpers/VERSIONS.sh` and expanding the variable that best reflects the version you are looking to add.

All products have variables that describe version ranges, these ranges are _generally_ for a full minor-version range, but exceptions are made when an architecture switch from _32-bit_ to _64-bit_ occurs

### Adding or Updating Casks

In the following example, the steps reference a (currently unreleased) version of Vagrant `1.9.9` and a previously installed version of Vagrant `1.9.8`.

Your contribution may pertain to a different product and version, but the steps remain alike:

- Edit the `VAGRANT_19X_64BIT` variable in `helpers/VERSIONS.sh` and add an entry of `"1.9.9"`

- Generate a Cask file for this version, using `helpers/generate-casks.sh`

- The `generate-casks.sh` helper will parse the `helpers/VERSION.sh` file and retrieve the _checksum_ for Vagrant `1.9.9`

- Copy the generated Cask files to `$(brew --repo)/Library/Taps/operatehappy/homebrew-hashicorp/Casks/)`

- Uninstall the previously installed version of Vagrant using `brew cask uninstall vagrant@1.9.8`

- Install the new version using `brew cask install vagrant@1.9.9`

- Uninstall the new version using `brew cask uninstall vagrant@1.9.9`

- Optional, but highly recommended: use `helpers/install-casks.sh` to  verify installability of _all_ currently generated Casks

- Optionally, but highly recommended: lint your contribution using [RuboCop](https://www.rubocop.org)

## Notes

- An exhaustive list of versions, is available via [helpers/VERSIONS.sh](https://github.com/operatehappy/homebrew-hashicorp/blob/master/helpers/VERSIONS.sh)

- Vagrant switched from a _32-bit_ architecture to a _64-bit_ one after version `1.9.2`

- The [operatehappy/dotfiles-org](https://github.com/operatehappy/dotfiles-org) repository includes a _RuboCop_ configuration that can be used with Casks and Formulae

## Author Information

This tap is maintained by the contributors listed on [GitHub](https://github.com/operatehappy/homebrew-hashicorp/graphs/contributors)

Development of this module was sponsored by [Operate Happy](https://github.com/operatehappy).

Additionally, a special thanks goes out to the contributors of Brew's `homebrew-core` formulae:

- [consul.rb](https://github.com/Homebrew/homebrew-core/commits/master/Formula/consul.rb)
- [vagrant.rb](https://github.com/Homebrew/homebrew-core/commits/master/Formula/vagrant.rb)

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
