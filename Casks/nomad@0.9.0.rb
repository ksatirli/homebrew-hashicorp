cask 'nomad@0.9.0' do
  version '0.9.0'
  sha256 'af23844be90c3ec14c1a3ed92cf416026d6cf1e94a0c8d5b55c4bf5eaa4f9ff3'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.0/nomad_0.9.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
