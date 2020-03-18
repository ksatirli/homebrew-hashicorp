cask 'consul-aws@0.1.1' do
  version '0.1.1'
  sha256 '1ee46dc64f75372b746dad38d65ed0611f6ceaf447b1e6f81d15aaa35b153ed3'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-aws/0.1.1/consul-aws_0.1.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-aws/releases.atom'
  name 'consul-aws'
  homepage 'https://github.com/hashicorp/consul-aws'

  auto_updates false

  binary 'consul-aws'
end
