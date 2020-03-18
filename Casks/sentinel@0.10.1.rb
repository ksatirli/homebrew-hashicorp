cask 'sentinel@0.10.1' do
  version '0.10.1'
  sha256 '56442b3004d3aac08977ae00d2afb7812fef7e51ff506a05d3adc2d401c29d55'

  url 'https://releases.hashicorp.com/sentinel/0.10.1/sentinel_0.10.1_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
