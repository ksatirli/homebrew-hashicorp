cask 'envconsul@0.2.0' do
  version '0.2.0'
  sha256 '96c52c2d7eeee255910c3068ee09039ac3c9e6c2098a4e8a167d4ae1413a5704'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.2.0/envconsul_0.2.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
