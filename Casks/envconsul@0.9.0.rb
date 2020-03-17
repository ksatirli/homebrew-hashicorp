cask 'envconsul@0.9.0' do
  version '0.9.0'
  sha256 '77a0b86cee0ebe3f1f51f3fbde3c11bfcc010ee7413a95ad311a1e4dfddf3b95'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.9.0/envconsul_0.9.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
