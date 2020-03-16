cask 'nomad@0.10.1' do
  version '0.10.1'
  sha256 '267ac7cb53c69aff1e59cf321aa6e42773b0f493efe06dcc1a6f7d4a0736bcf1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.1/nomad_0.10.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
