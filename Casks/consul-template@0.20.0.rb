cask 'consul-template@0.20.0' do
  version '0.20.0'
  sha256 '64f951cc0499baff8c8bf003b9e22dbed4b793b3cf41d5d1ec5c0cc0e678274d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.20.0/consul-template_0.20.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
