cask 'consul-template@0.22.1' do
  version '0.22.1'
  sha256 '1de33108c1d4b7d0ac67ca95874c97010177ebc9abaf35bd139167cbbb114c24'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.22.1/consul-template_0.22.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
