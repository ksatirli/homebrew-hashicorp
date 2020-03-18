cask 'consul-template@0.24.1' do
  version '0.24.1'
  sha256 'a3a4707c0962eda310516febc986a0ce45fc97c513a844a3a60b8ffdfb4834c0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.24.1/consul-template_0.24.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
