cask 'nomad@0.12.2+ent' do
  version '0.12.2+ent'
  sha256 '5ea021fad209c74430ba74dfd82c8417862e2627644b03e811e5e1a16f9c82e5'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.2+ent/nomad_0.12.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
