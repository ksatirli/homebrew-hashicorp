cask 'vagrant@2.2.9' do
  version '2.2.9'
  sha256 '529cde2a78e6df38ec906b65c70b36a087e2601eab42e25856e35b20ccb027c0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.dmg'
  appcast 'https://github.com/hashicorp/vagrant/releases.atom'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  conflicts_with cask: 'vagrant'

  pkg 'vagrant.pkg'

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      ['Yes'],
                       sudo:       true,
                     },

            pkgutil: 'com.vagrant.vagrant'

  zap trash: '~/.vagrant.d'
end
