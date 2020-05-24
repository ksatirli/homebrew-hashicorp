cask 'nomad-autoscaler@0.0.1-techpreview1' do
  version '0.0.1-techpreview1'
  sha256 'c5ae5eb3ce4e6de19f96f7a2f3096a042b71ce9453230ae831555a8b56820383'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad-autoscaler/0.0.1-techpreview1/nomad-autoscaler_0.0.1-techpreview1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad-autoscaler/releases.atom'
  name 'nomad-autoscaler'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad-autoscaler'

  binary 'nomad-autoscaler'
end
