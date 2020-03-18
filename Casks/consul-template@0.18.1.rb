cask 'consul-template@0.18.1' do
  version '0.18.1'
  sha256 'e807abf95061177241d8fcc6b80fee635d236a47a8befc39600a67e4cfda2f83'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.18.1/consul-template_0.18.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
