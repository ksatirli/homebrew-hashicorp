cask 'vagrant@2.1.0' do
  version '2.1.0'
  sha256 'fbbec9a335ab69b1a2b5535bca59b49034bb38c592c05f0f70fc120e25f71a4d'

  # releases.hashicorp.com/vagrant was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/2.1.0/vagrant_2.1.0_x86_64.dmg'
  appcast 'https://github.com/hashicorp/vagrant/releases.atom'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'vagrant.pkg'

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      ['Yes'],
                       sudo:       true,
                     },

            pkgutil: 'com.vagrant.vagrant'

  zap trash: '~/.vagrant.d'
end
