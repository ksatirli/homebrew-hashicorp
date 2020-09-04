cask 'nomad-autoscaler@0.1.0' do
  version '0.1.0'
  sha256 'b646081d9db1881ae1f3c410cf03611268da8a5b62686a3eacd961a5c80e2cde'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad-autoscaler/0.1.0/nomad-autoscaler_0.1.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad-autoscaler/releases.atom'
  name 'nomad-autoscaler'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad-autoscaler'

  binary 'nomad-autoscaler'
end
