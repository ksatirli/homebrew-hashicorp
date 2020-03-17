cask 'envconsul@0.9.2' do
  version '0.9.2'
  sha256 'ef64e896f6728489940d02833484b9fe0b28e69d6507179a5c4a1555f139f021'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.9.2/envconsul_0.9.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
