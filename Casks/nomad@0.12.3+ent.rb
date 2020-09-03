cask 'nomad@0.12.3+ent' do
  version '0.12.3+ent'
  sha256 '2cf673da746625b94e6ded183ff480052cc960a89abf9186af015a933baaa8e9'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.3+ent/nomad_0.12.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
