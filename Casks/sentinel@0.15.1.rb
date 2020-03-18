cask 'sentinel@0.15.1' do
  version '0.15.1'
  sha256 '235205161ed2ab38e7795de7d709f49755faf98ec5c9d161dbd4a46477119c27'

  url 'https://releases.hashicorp.com/sentinel/0.15.1/sentinel_0.15.1_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
