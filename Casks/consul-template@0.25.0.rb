cask 'consul-template@0.25.0' do
  version '0.25.0'
  sha256 'fba94cc1f7d471004ae4a6dac22d0b0144a477db14a25e09e9a19b85fa7ca187'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.25.0/consul-template_0.25.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
