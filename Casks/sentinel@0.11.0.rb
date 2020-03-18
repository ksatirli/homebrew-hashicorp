cask 'sentinel@0.11.0' do
  version '0.11.0'
  sha256 '5a45ce62921489bdd21ebb13f672c0b90b54467a2a0bd8fa4cb9428d00a412b2'

  url 'https://releases.hashicorp.com/sentinel/0.11.0/sentinel_0.11.0_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
