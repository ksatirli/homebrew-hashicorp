cask 'vagrant' do
  version '1.8.7'
  sha256 '14d68f599a620cf421838ed037f0a1c4467e1b67475deeff62330a21fda4937b'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'e2c4859e876a81fa46e17359d452a26f250ee859e43c5265c2a19ab88b376644'
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
