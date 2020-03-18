cask 'consul-template@0.23.0' do
  version '0.23.0'
  sha256 'd4e1dfcfd44fdee60c227655c000416a3a76486dec4aeed67e31eb319c7e1c67'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.23.0/consul-template_0.23.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
