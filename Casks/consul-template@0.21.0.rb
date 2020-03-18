cask 'consul-template@0.21.0' do
  version '0.21.0'
  sha256 '71ce3935f21ffe8de9251fd9e3ec7c0fb32b51d97d38940528d688cb07916228'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.21.0/consul-template_0.21.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
