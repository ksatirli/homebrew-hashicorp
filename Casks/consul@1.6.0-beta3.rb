cask "consul@1.6.0-beta3" do
  version "1.6.0-beta3"
  sha256 "3e6d1a126bb94b936c6b69b0ebb985cbfb62935e74afacd0a67ee5e7d479330d"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.6.0-beta3/consul_1.6.0-beta3_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
