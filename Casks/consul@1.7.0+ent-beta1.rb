cask 'consul@1.7.0+ent-beta1' do
  version '1.7.0+ent-beta1'
  sha256 'd6378bf15caaa2274586677d4dc07c6826d16bd6a5242af816e47cc838d558d7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.0+ent-beta1/consul_1.7.0+ent-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
