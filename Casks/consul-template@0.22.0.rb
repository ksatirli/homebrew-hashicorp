cask 'consul-template@0.22.0' do
  version '0.22.0'
  sha256 '3aecfd0d6bb7e0eddf3dd444f77af5ee7278fc53daf4851055d893335f0dadad'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul-template/0.22.0/consul-template_0.22.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'consul-template'
  homepage 'https://github.com/hashicorp/consul-template'

  auto_updates false
  conflicts_with formula: 'consul-template'

  binary 'consul-template'
end
