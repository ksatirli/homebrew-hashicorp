cask 'consul-template@0.21.1' do
  version '0.21.1'
  sha256 'df87f3124120babb26fd6d0f3bcf2e1729795d8c21c688752dd5cfce7cd75069'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.21.1/consul-template_0.21.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
