cask 'vagrant@2.2.4' do
  version '2.2.4'
  sha256 'a09a2f0fb3fcbd4cfb41c7812c01605173f64056449c3dbcc513b4211e9c1e8d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.dmg'
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
