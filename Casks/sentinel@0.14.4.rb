cask 'sentinel@0.14.4' do
  version '0.14.4'
  sha256 '7beeb90c32984d6d133ffed53f1e8c391485b30df3683dfa4de4b67c40fceeba'

  url 'https://releases.hashicorp.com/sentinel/0.14.4/sentinel_0.14.4_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
