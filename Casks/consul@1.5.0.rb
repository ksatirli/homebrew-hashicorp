cask 'consul@1.5.0' do
  version '1.5.0'
  sha256 'b4033ea6871fe6136ee5d940c834be2248463c3ec248dc22370e6d5360931325'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.5.0/consul_1.5.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
