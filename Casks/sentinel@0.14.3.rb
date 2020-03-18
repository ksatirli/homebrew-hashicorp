cask 'sentinel@0.14.3' do
  version '0.14.3'
  sha256 '86feb4cd422546e6d50d3eb55b01e995eff36d7451153a0d9840cb8de05ad801'

  url 'https://releases.hashicorp.com/sentinel/0.14.3/sentinel_0.14.3_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
