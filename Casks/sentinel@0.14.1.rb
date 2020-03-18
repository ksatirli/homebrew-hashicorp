cask 'sentinel@0.14.1' do
  version '0.14.1'
  sha256 '8a6f714850fb30afac86cc73f653add96168d648fa3110072185fe2b5379e143'

  url 'https://releases.hashicorp.com/sentinel/0.14.1/sentinel_0.14.1_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
