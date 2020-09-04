cask 'sentinel@0.15.6' do
  version '0.15.6'
  sha256 '8b249304f5897dbf4314257a5f4cd28e1fb382524e68f6681cb1c254a72e9be2'

  url 'https://releases.hashicorp.com/sentinel/0.15.6/sentinel_0.15.6_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
