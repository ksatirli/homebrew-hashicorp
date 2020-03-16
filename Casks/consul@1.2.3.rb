cask 'consul@1.2.3' do
  version '1.2.3'
  sha256 'd46939292c28027b6c8cef7a3eab3cc8fe9981cbb71dfb8a0eb4b4b556cfe016'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.2.3/consul_1.2.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
