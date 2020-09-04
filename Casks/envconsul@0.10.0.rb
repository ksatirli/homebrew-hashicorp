cask 'envconsul@0.10.0' do
  version '0.10.0'
  sha256 'a5139fbc2a714a07536be4c847c4037dbe66d85b23d538e77510c2c64ccf1d7d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.10.0/envconsul_0.10.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
