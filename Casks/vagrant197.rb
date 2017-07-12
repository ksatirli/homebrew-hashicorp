cask 'vagrant197' do
  version '1.9.7'
  sha256 '3ebb9bf1f7d7bb947da52c33cb540750156f4a9ba1c1697c07bb9317d42ea503'

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
