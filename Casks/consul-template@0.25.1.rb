cask 'consul-template@0.25.1' do
  version '0.25.1'
  sha256 'b157cb01c957f1f8d2d990565ce9d0fa6f32709ece1f9769b1e630f0e13c838b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.25.1/consul-template_0.25.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
