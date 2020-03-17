cask 'vagrant@2.0.0' do
  version '2.0.0'
  sha256 '596fba741f99a083eed9751973b4a3016c99de611165ca561922008d23008494'

  # releases.hashicorp.com/vagrant was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/2.0.0/vagrant_2.0.0_x86_64.dmg'
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
