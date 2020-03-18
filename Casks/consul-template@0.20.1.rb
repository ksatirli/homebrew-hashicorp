cask 'consul-template@0.20.1' do
  version '0.20.1'
  sha256 '2b3541ec99e33d73f74d3b6a779b52bf98260c9447c15b084003f89b393ab91b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.20.1/consul-template_0.20.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
