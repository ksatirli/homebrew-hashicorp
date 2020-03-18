cask 'envconsul@0.7.0' do
  version '0.7.0'
  sha256 'df148176629edd4f5241c7834da06bb5e7b901b91de89cd8274c19ec99099bc2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.7.0/envconsul_0.7.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
