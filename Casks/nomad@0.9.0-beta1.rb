cask 'nomad@0.9.0-beta1' do
  version '0.9.0-beta1'
  sha256 '4dd6872919a864cda862a4942c4698cd633c25e9a235830d7a4ed13f6a9bc9b8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.0-beta1/nomad_0.9.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
