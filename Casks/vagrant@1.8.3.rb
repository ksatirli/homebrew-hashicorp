cask 'vagrant@1.8.3' do
  version '1.8.3'
  sha256 'c510dcbc02ef7896674c25b62ae3c3342141575a93ae635a8da95b98c0268a06'

  # releases.hashicorp.com/vagrant was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/1.8.3/vagrant_1.8.3.dmg'
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
