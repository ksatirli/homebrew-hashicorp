cask 'envconsul@0.7.3' do
  version '0.7.3'
  sha256 '30bbb3ade6029a3f4d013ac420b6bbce0bfd6cf9b6468aed38845d70dbb963ef'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.7.3/envconsul_0.7.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
