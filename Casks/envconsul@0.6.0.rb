cask 'envconsul@0.6.0' do
  version '0.6.0'
  sha256 'e54721e5cd6c64a3e9669cb98196d6a1c8303ea5d30ddb11f13d76877d5c7f79'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.6.0/envconsul_0.6.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
