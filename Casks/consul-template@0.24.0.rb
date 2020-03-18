cask 'consul-template@0.24.0' do
  version '0.24.0'
  sha256 'ff14b9433a6d52932128f8009a47f83efbb47574cbc893ad32c1564b7412860a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.24.0/consul-template_0.24.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
