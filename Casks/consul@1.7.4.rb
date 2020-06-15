cask 'consul@1.7.4' do
  version '1.7.4'
  sha256 'ec089afe66c7c49237d6ec1beca02257f0fe861d0615b2f06c3243cc9fd4e142'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.4/consul_1.7.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
