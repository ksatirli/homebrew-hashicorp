cask 'sentinel@0.15.0' do
  version '0.15.0'
  sha256 'f6309b8a155f1b91a6d3442facf3174313cbc76dbaa9f8b27055e037de9a44a3'

  url 'https://releases.hashicorp.com/sentinel/0.15.0/sentinel_0.15.0_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
