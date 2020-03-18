cask 'consul-template@0.19.0' do
  version '0.19.0'
  sha256 'b968741c4f5652a5ca85535885a2982bbfc8a7a8981a6add7144ceaa758bbb0b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.19.0/consul-template_0.19.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
