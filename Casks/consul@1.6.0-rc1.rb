cask "consul@1.6.0-rc1" do
  version "1.6.0-rc1"
  sha256 "b0eaae4d2c900d9eb5161c99ec1b3c5efd174a4f836ae648b4a8bead56175862"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.6.0-rc1/consul_1.6.0-rc1_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
