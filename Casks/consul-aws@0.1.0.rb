cask 'consul-aws@0.1.0' do
  version '0.1.0'
  sha256 'ee87841d9441c7c6031ea32eaa9807a2b4e53bfcfaf23afdd11b7fc97ef06e07'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-aws/0.1.0/consul-aws_0.1.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-aws/releases.atom'
  name 'consul-aws'
  homepage 'https://github.com/hashicorp/consul-aws'

  auto_updates false

  binary 'consul-aws'
end
