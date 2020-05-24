cask 'consul@1.8.0+ent-beta2' do
  version '1.8.0+ent-beta2'
  sha256 '3594b05b182d691e8f32b0f996fcfe4f4b920cb0190356dd076dc3aa1e8da27f'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.0+ent-beta2/consul_1.8.0+ent-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
