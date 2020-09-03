cask 'consul@1.8.3+ent' do
  version '1.8.3+ent'
  sha256 'ce49671ad580b7ef9e742d089c614a6b5ed5f1c00328d61b9b0900aa72aa2a9a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.3+ent/consul_1.8.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
