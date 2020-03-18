cask 'envconsul@0.7.2' do
  version '0.7.2'
  sha256 '5a17f67a266323f18b60168cbf873640f6a9f50b5dcfefbfc5f48215ae020b39'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.7.2/envconsul_0.7.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
