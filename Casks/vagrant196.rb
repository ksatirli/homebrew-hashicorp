cask 'vagrant196' do
  version '1.9.6'
  sha256 'bf3ed196cc12f9906d1d1dbe38c297d42e1de318f1ac0f7eb720894af9519141'

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg "vagrant.pkg", allow_untrusted: true

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      ['Yes'],
                       sudo:       true,
                     },
            pkgutil: 'com.vagrant.vagrant'

  zap       trash: [
                      '~/.vagrant.d'
                    ]

end
