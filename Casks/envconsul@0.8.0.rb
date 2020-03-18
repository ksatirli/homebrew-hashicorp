cask 'envconsul@0.8.0' do
  version '0.8.0'
  sha256 '075d132842817e22f7306cbb46e90607c40fe5bea28d05e7eab9ee3a2fe02b76'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.8.0/envconsul_0.8.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
