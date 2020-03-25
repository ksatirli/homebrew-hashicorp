cask 'nomad@0.11.0-beta1' do
  version '0.11.0-beta1'
  sha256 'dcdede7f2635bdb39339f70592c12e384424f6a24c7afbe30717bcd46cc00daf'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.11.0-beta1/nomad_0.11.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
