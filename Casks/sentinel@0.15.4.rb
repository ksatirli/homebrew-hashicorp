cask 'sentinel@0.15.4' do
  version '0.15.4'
  sha256 'b9c8c7430f4260da18ca83d7e3e69508f4374cb757fb946acbd19ed66c82c674'

  url 'https://releases.hashicorp.com/sentinel/0.15.4/sentinel_0.15.4_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
