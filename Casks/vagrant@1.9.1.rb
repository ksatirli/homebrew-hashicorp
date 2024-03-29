cask 'vagrant@1.9.1' do
  version '1.9.1'
  sha256 '17191ff7a1d796aa89c558b45c706288275dade6a65e2b219c2efa0e54c02ef7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/1.9.1/vagrant_1.9.1.dmg'
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
