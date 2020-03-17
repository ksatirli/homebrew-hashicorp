cask 'envconsul@0.9.1' do
  version '0.9.1'
  sha256 '470c4154deafc45f75394f19a9cef086b3273a9dae9e9b5530da9db16ea137f5'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.9.1/envconsul_0.9.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
