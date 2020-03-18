cask 'envconsul@0.1.0' do
  version '0.1.0'
  sha256 '925dbef54ca5cec5ce8ad3ecd436dc231112cbaa09325fe9b7b6202c10b42037'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.1.0/envconsul_0.1.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
