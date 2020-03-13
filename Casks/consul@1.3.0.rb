cask "consul@1.3.0" do
  version "1.3.0"
  sha256 "e352ffed8a7e5263d4586bc7afd1a684d55fc9c73f938377edf0eeb85b386844"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.3.0/consul_1.3.0_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
