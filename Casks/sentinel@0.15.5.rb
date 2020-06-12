cask 'sentinel@0.15.5' do
  version '0.15.5'
  sha256 '700e979d8f047bff28445b4a6037dbffde7bf01774ef48b6b2e959f9ffbdfab2'

  url 'https://releases.hashicorp.com/sentinel/0.15.5/sentinel_0.15.5_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
