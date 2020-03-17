cask 'consul@1.2.4' do
  version '1.2.4'
  sha256 'ae6386001cddcc88172acb5ace8002a9fc4474b851509dfec7d03e62ad313a55'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.2.4/consul_1.2.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
