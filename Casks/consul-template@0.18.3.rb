cask 'consul-template@0.18.3' do
  version '0.18.3'
  sha256 'a498afa9c7e182ad5622a63b93f7273b24d3dc8c27b635d8f15cb17e49ba436b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.18.3/consul-template_0.18.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
