cask 'sentinel@0.12.0' do
  version '0.12.0'
  sha256 '7d01196ff3a57bd142cbc9ab7550544a2ac7eb13865cec65da1bf9465dde6a53'

  url 'https://releases.hashicorp.com/sentinel/0.12.0/sentinel_0.12.0_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
