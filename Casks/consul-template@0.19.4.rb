cask 'consul-template@0.19.4' do
  version '0.19.4'
  sha256 'd492076203040307d558964f7f7448b8c2d69b4a3a126df5ae24e0482a3f169c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.19.4/consul-template_0.19.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
