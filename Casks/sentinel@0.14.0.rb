cask 'sentinel@0.14.0' do
  version '0.14.0'
  sha256 '7e555d2708b11acf217d3dc4581833f830de5a13d98f9b0cc9d974f1eba8b1bf'

  url 'https://releases.hashicorp.com/sentinel/0.14.0/sentinel_0.14.0_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
