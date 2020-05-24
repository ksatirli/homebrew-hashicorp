cask 'nomad-autoscaler@0.0.2' do
  version '0.0.2'
  sha256 '8b33f61faab5e4804ad64fd6c723a89149d9d3b2bd49a6a8d33d4333300144eb'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad-autoscaler/0.0.2/nomad-autoscaler_0.0.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad-autoscaler/releases.atom'
  name 'nomad-autoscaler'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad-autoscaler'

  binary 'nomad-autoscaler'
end
