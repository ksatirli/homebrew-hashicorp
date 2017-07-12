cask 'vagrant185' do
  version '1.8.5'
  sha256 'f12879c4890c39ec49af95153a6151b19fd137cbdccf7db22470f31464b9dd56'

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
