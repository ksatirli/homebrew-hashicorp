cask 'sentinel@0.10.4' do
  version '0.10.4'
  sha256 '895da4ae8565d5ec1272c8bf6aa8e3470011032057e1b57d8747325b8c0627b4'

  url 'https://releases.hashicorp.com/sentinel/0.10.4/sentinel_0.10.4_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
