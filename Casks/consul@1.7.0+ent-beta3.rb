cask 'consul@1.7.0+ent-beta3' do
  version '1.7.0+ent-beta3'
  sha256 '4a84b281492e54aac61c1d55df7b64d3047a7495de05ccf3e5effc15fb804787'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.0+ent-beta3/consul_1.7.0+ent-beta3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
