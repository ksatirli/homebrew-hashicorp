cask 'consul-template@0.19.1' do
  version '0.19.1'
  sha256 '5f980c3e47b44cd99701cd574051a1101731e4064efe06425200155a66b70b00'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.19.1/consul-template_0.19.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
