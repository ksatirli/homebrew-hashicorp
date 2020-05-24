cask 'consul@1.8.0-beta2' do
  version '1.8.0-beta2'
  sha256 '98fd9b53c54f8b01ff916353a76a32358fe475c71edd16c420993a3d43232b9c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.0-beta2/consul_1.8.0-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
