cask 'consul-template@0.19.3' do
  version '0.19.3'
  sha256 '7639094eeae88f936f439a7ed9bc5b1ff9ca4c79c5cf91c76e2339a20a9f59de'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.19.3/consul-template_0.19.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
