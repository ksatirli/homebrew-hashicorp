cask 'sentinel@0.13.0' do
  version '0.13.0'
  sha256 'dfddb1974887ad836c9238e2bfe16d26e84e9626bccf8315d56a3ab19eb0c9fd'

  url 'https://releases.hashicorp.com/sentinel/0.13.0/sentinel_0.13.0_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
