cask 'nomad@0.12.0-beta2+ent' do
  version '0.12.0-beta2+ent'
  sha256 'aef0aef43603194899358fce6bcc070110edd3b171f0add7133592315e3a3022'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.0-beta2+ent/nomad_0.12.0-beta2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
