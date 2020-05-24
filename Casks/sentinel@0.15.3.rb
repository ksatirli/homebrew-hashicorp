cask 'sentinel@0.15.3' do
  version '0.15.3'
  sha256 '1e3b3631782200ebcf5e7cd70a3cbfd591cd5b0382aa219fec62aa7c26d41d8a'

  url 'https://releases.hashicorp.com/sentinel/0.15.3/sentinel_0.15.3_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
