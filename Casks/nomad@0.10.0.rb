cask 'nomad@0.10.0' do
  version '0.10.0'
  sha256 '6b3bc96efdfec6337acb8f1bac1c46a87eff6d4a54dcb5b0e16b81c0ce9fca45'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.0/nomad_0.10.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
