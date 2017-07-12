cask 'vagrant181' do
  version '1.8.1'
  sha256 '2cfdbeec9e40376e49dae9d9f27511896e3b296f0e24f8731339bb3d32c48c93'

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
