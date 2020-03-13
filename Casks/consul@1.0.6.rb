cask "consul@1.0.6" do
  version "1.0.6"
  sha256 "857c8e926b8be532050e0e7a9fb32c9c43ab7e188226d94604817589ae8ef89a"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.0.6/consul_1.0.6_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
