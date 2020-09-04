cask 'nomad@0.12.4-rc1+ent' do
  version '0.12.4-rc1+ent'
  sha256 '71df404687f0214db4e78d3c3ed3eaac9a14b7a1880d6e76d96eee66fdd641ac'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.4-rc1+ent/nomad_0.12.4-rc1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
