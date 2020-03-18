cask 'consul-template@0.18.0' do
  version '0.18.0'
  sha256 'a496c786f10e1abfc4c607637477fdcee829e3a25caa37ad4ae69714a927ea15'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.18.0/consul-template_0.18.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
