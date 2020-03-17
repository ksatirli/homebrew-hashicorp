cask 'envconsul@0.6.1' do
  version '0.6.1'
  sha256 'bf35ecec47a6034cf7507150ed854e2d9425e588807d783ebfb53f83a5e5142b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.6.1/envconsul_0.6.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
