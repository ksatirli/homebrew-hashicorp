cask 'nomad@0.12.0+ent' do
  version '0.12.0+ent'
  sha256 '58c6daff8c788a53a6c6464bd8ffd46b700991c09ccd861a40b0acd80db0f9de'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.0+ent/nomad_0.12.0+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
