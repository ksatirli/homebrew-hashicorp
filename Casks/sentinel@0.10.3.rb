cask 'sentinel@0.10.3' do
  version '0.10.3'
  sha256 'f4542e65e5886b367d3af951012637fb21092b47cb7489de9042fca893f71fc3'

  url 'https://releases.hashicorp.com/sentinel/0.10.3/sentinel_0.10.3_darwin_amd64.zip'
  name 'sentinel'
  homepage 'https://www.hashicorp.com/sentinel/'

  auto_updates false
  conflicts_with formula: 'sentinel'

  binary 'sentinel'
end
