cask 'vagrant194' do
  version '1.9.4'
  sha256 '2ae186e762498c8e018efbf3452a3d368627cb7d518b26f3f445f0a3686e5a07'

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
