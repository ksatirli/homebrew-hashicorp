cask 'envconsul@0.7.1' do
  version '0.7.1'
  sha256 '38f87c4c531102ef098d573c7fdbc0626f0a8a98c1ff02adc2a76ed0819dd14d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.7.1/envconsul_0.7.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
