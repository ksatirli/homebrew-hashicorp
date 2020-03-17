cask 'consul@1.3.1+ent' do
  version '1.3.1+ent'
  sha256 '4a56172a7ffbd4e937f3e66097224f0c782ce237dd6843576de6b9720668d7f1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.3.1+ent/consul_1.3.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
