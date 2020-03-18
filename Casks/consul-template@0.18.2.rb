cask 'consul-template@0.18.2' do
  version '0.18.2'
  sha256 '9bf699f45b545954aca1f08ec7a03950ac8876a2d088caf8e7934b6767b25097'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.18.2/consul-template_0.18.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
