cask 'sentinel@0.15.2' do
  version '0.15.2'
  sha256 '76c30e1d8bc3955eda794d6b37e0174d016ad876bd8a96ba38e274b8f310bd7b'

  url 'https://releases.hashicorp.com/sentinel/0.15.2/sentinel_0.15.2_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
