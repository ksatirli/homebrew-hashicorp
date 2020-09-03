cask 'envconsul@0.9.3' do
  version '0.9.3'
  sha256 'f35305a602119a33fdc1cafc099b3fd389ccec2957481e93cf51bbb88e377b6b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.9.3/envconsul_0.9.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
