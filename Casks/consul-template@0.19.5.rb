cask 'consul-template@0.19.5' do
  version '0.19.5'
  sha256 '792d584f12fb559ec14f94c16ff7d5c791b0918d4a553da52642cb10f2c07226'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.19.5/consul-template_0.19.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
