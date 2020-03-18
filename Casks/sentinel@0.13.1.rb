cask 'sentinel@0.13.1' do
  version '0.13.1'
  sha256 'd44b828dc9a07da02071578728826a27bc3f8b2b7fee514d6614dfc1759ae7f3'

  url 'https://releases.hashicorp.com/sentinel/0.13.1/sentinel_0.13.1_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
