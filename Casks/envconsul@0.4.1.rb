cask 'envconsul@0.4.1' do
  version '0.4.1'
  sha256 '4fcc4db96ddecbaa9977da6ae0b3dfdc01e9a7da37c29c5a9c4668b431b7564f'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.4.1/envconsul_0.4.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
