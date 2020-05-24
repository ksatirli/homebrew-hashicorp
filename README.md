# Homebrew: HashiCorp

> Homebrew Tap for HashiCorp Suite of Tools

## Table of Contents

- [Homebrew: HashiCorp](#homebrew-hashicorp)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Usage](#usage)
    - [Installing a Cask](#installing-a-cask)
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

This Tap provides an exhaustive range of versions for the following applications:

- main Casks
  - Consul `>= 1.0.0` and `<= 1.8.0`
  - Packer `>= 1.0.0` and `<= 1.5.5`
  - Nomad `>= 0.8.0-rc1` and `<= 0.11.0`
  - Vagrant `>= 1.8.0` and `<= 2.2.7`
  - Vault `>= 0.7.0` and `<= 1.4.0`
- misc. Casks
  - `consul-aws` `>= 0.1.0` and `<= 0.1.2`
  - `consul-template` `>= 0.1.0` and `<= 0.25.0`
  - `envconsul` `>= 0.1.0` and `<= 0.9.2`
  - `sentinel` `>= 0.10.0` and `<= 0.15.1`

Contrary to the upstream [homebrew-core](https://github.com/Homebrew/homebrew-core/) repository, this Tap uses _pre-built_ binaries as available via [releases.hashicorp.com](https://releases.hashicorp.com/).

### Installing a Cask

Once the Tap is installed, you can use the [brew cask install](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap#installing) commands to install a Cask:

```sh
brew cask install product@X.Y.Z
```

For example, to install _Vagrant 1.8.0_  you would use the following:

```sh
brew cask install vagrant@1.8.0
```

## Contributing

The [operatehappy/homebrew-tools](https://github.com/operatehappy/homebrew-tools) repository includes _tools_ that assist with the generation of _Casks_ for this and other [@operatehappy-maintained Taps](https://github.com/search?q=org%3Aoperatehappy+homebrew-tap).

The `generate-casks.sh` and `verify-casks.sh` scripts expect the `operatehappy/homebrew-tools` repository to be available on the same level as this repository.

### Adding or Updating Casks

In the following example, the steps reference a (currently unreleased) `1.9.9` version of Vagrant and a previously installed version of Vagrant `1.9.8`.

Your contribution may be for a different product and version, but the steps remain alike:

- Edit the `VAGRANT_19X_64BIT` variable in `VERSIONS.sh` and add an entry of `"1.9.9"`

- Generate a Cask file for this version, using `generate-casks.sh vagrant`

- The `generate-casks.sh` helper will parse the `VERSION.sh` file and retrieve the _checksum_ for Vagrant `1.9.9`

- Use `verify-casks.sh vagrant` to verify installability of the newly generated Vagrant Cask

  - This helper will carry out the following steps:

    - Copy the generated Cask to `$(brew --repo)/Library/Taps/operatehappy/homebrew-hashicorp/Casks/`

    - Uninstalls the previously installed version of Vagrant using `brew cask uninstall vagrant@1.9.8`

    - Installs the new version using `brew cask install vagrant@1.9.9`

    - Lints the Cask file using `brew cask style vagrant@1.9.9.`

    - Uninstall the new version using `brew cask uninstall vagrant@1.9.9`

## Notes

- An exhaustive list of versions, is available via [VERSIONS.sh](https://github.com/operatehappy/homebrew-hashicorp/blob/master/VERSIONS.sh).

- Vagrant switched from a _32-bit_ architecture to a _64-bit_ one after version `1.9.2`.

- For (legacy) versions of Terraform, please have a look at [tfenv](https://github.com/tfutils/tfenv) and [tfswitch](https://warrensbox.github.io/terraform-switcher/).

## Author Information

This tap is maintained by the contributors listed on [GitHub](https://github.com/operatehappy/homebrew-hashicorp/graphs/contributors).

Development of this module was sponsored by [Operate Happy](https://github.com/operatehappy).

Additionally, a special thanks goes out to the contributors of Brew's `homebrew-core` formulae:

- [consul.rb](https://github.com/Homebrew/homebrew-core/commits/master/Formula/consul.rb)
- [consul-template.rb](https://github.com/Homebrew/homebrew-core/blob/master/Formula/consul-template.rb)
- [envconsul.rb](https://github.com/Homebrew/homebrew-core/blob/master/Formula/envconsul.rb)
- [nomad.rb](https://github.com/Homebrew/homebrew-core/commits/master/Formula/nomad.rb)
- [packer.rb](https://github.com/Homebrew/homebrew-core/commits/master/Formula/packer.rb)
- [vagrant.rb](https://github.com/Homebrew/homebrew-core/commits/master/Formula/vagrant.rb)
- [vault.rb](https://github.com/Homebrew/homebrew-core/commits/master/Formula/vault.rb)

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
