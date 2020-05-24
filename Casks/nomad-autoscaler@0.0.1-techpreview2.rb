cask 'nomad-autoscaler@0.0.1-techpreview2' do
  version '0.0.1-techpreview2'
  sha256 '9ff8e0a50cc7ec1826ea543ce7e64cd50bb0041a5c527ce1a9f525680431c688'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad-autoscaler/0.0.1-techpreview2/nomad-autoscaler_0.0.1-techpreview2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad-autoscaler/releases.atom'
  name 'nomad-autoscaler'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad-autoscaler'

  binary 'nomad-autoscaler'
end
