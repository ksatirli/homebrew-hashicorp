cask 'vagrant@2.0.1' do
  version '2.0.1'
  sha256 '07f7be3a457a8422d576e6371c8499fbdea411b02aecc7ea3c5258494514c5f2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.dmg'
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
