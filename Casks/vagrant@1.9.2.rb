cask 'vagrant@1.9.2' do
  version '1.9.2'
  sha256 'ee0549a16859042d39c08ae153895da6cdfbad7c587b3438349cdf01efe10703'

  # releases.hashicorp.com/vagrant was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/1.9.2/vagrant_1.9.2.dmg'
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
