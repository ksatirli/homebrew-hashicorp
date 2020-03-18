cask 'sentinel@0.10.0' do
  version '0.10.0'
  sha256 '3108a416b93eec51a92c805a380614c394ea1bb021a6ce87fcf29c1256fa4b9a'

  url 'https://releases.hashicorp.com/sentinel/0.10.0/sentinel_0.10.0_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
