cask "consul@1.4.1" do
  version "1.4.1"
  sha256 "76561f81dd49c261565f26711292e1a7c67fbe386fa04891116128912de91697"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.4.1/consul_1.4.1_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
