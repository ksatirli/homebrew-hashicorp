cask 'consul-template@0.18.4' do
  version '0.18.4'
  sha256 '20f1cb18a813b667a50b8a85421afdf845079a8cf2f467431b4707a10b5fa536'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.18.4/consul-template_0.18.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
