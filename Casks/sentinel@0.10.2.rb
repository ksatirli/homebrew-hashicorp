cask 'sentinel@0.10.2' do
  version '0.10.2'
  sha256 'e9dab61ccdd9ce63671456f08f62e410423436a67bfa3a31ad95945af899bf79'

  url 'https://releases.hashicorp.com/sentinel/0.10.2/sentinel_0.10.2_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
