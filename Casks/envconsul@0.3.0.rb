cask 'envconsul@0.3.0' do
  version '0.3.0'
  sha256 '632b522234631e223fa2873b3ac75ece55502616094e5d043f0056dc0c7dc5e4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.3.0/envconsul_0.3.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
