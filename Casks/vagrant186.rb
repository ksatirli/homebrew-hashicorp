cask 'vagrant186' do
  version '1.8.6'
  sha256 'b916cd103c91faf57b63b49188e4cd09136f81385ff05d62e55b68c87b53a2d9'

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
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
