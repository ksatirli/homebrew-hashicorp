cask 'sentinel@0.14.2' do
  version '0.14.2'
  sha256 'aea6a6e915d0f8b29579c48dade284e446e83f49705cb2441bd7b40b411d818f'

  url 'https://releases.hashicorp.com/sentinel/0.14.2/sentinel_0.14.2_darwin_amd64.zip'

  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
