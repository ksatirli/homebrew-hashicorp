cask 'vagrant@1.9.3' do
  version '1.9.3'
  sha256 '7e08c3d204420027142d6623d2b02c5ec00f635a74b4ca7fb742e91894b942b8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/1.9.3/vagrant_1.9.3_x86_64.dmg'
  appcast 'https://github.com/hashicorp/vagrant/releases.atom'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  conflicts_with cask: 'vagrant'

  pkg 'vagrant.pkg', allow_untrusted: true

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      ['Yes'],
                       sudo:       true,
                     },

            pkgutil: 'com.vagrant.vagrant'

  zap trash: '~/.vagrant.d'
end
