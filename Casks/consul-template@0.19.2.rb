cask 'consul-template@0.19.2' do
  version '0.19.2'
  sha256 '9edfe764c8d826571b47866ad34e70c7fc466f563b59ea3289b307f48efeea08'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.19.2/consul-template_0.19.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
