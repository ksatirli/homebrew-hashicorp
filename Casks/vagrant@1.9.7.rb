cask 'vagrant@1.9.7' do
  version '1.9.7'
  sha256 '3ebb9bf1f7d7bb947da52c33cb540750156f4a9ba1c1697c07bb9317d42ea503'

  # releases.hashicorp.com/vagrant was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.dmg'
  appcast 'https://github.com/hashicorp/vagrant/releases.atom'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'vagrant.pkg', allow_untrusted: true

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      ['Yes'],
                       sudo:       true,
                     },

            pkgutil: 'com.vagrant.vagrant'

  zap trash: '~/.vagrant.d'
end
