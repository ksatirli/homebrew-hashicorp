cask 'consul-template@0.21.3' do
  version '0.21.3'
  sha256 'b4bccfd23621141646cf60908a70da1b3ac78416fd01d5d95cccb2415f9cb8af'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.21.3/consul-template_0.21.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
