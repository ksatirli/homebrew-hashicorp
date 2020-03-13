cask "consul@1.5.3" do
  version "1.5.3"
  sha256 "45664370e535930926dc057eb26bf768000496c0a29415f38b1cd382bf895397"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.5.3/consul_1.5.3_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
