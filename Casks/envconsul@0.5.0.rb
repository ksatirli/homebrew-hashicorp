cask 'envconsul@0.5.0' do
  version '0.5.0'
  sha256 '779aa58405edc1ba839312953d2d90fb13d360a45c557c1a56f4f764089a6ada'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/envconsul/0.5.0/envconsul_0.5.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/envconsul/releases.atom'
  name 'envconsul'
  homepage 'https://github.com/hashicorp/envconsul'

  auto_updates false
  conflicts_with formula: 'envconsul'

  binary 'envconsul'
end
