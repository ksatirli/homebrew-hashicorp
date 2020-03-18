cask 'consul-template@0.21.2' do
  version '0.21.2'
  sha256 'f7becf599eeebc10aaaebe5529d46e94e5249abafdbd0d002410c9983f63d5c4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.21.2/consul-template_0.21.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
