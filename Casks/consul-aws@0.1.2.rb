cask 'consul-aws@0.1.2' do
  version '0.1.2'
  sha256 'f23c1452f677121dd87b78aa6034afa2d1c2d156639192c239a0048e5354b9c8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-aws/0.1.2/consul-aws_0.1.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-aws/releases.atom'
  name 'consul-aws'
  homepage 'https://github.com/hashicorp/consul-aws'

  auto_updates false
  conflicts_with formula: 'consul-aws'

  binary 'consul-aws'
end
