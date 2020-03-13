cask "consul@1.1.1" do
  version "1.1.1"
  sha256 "1a80c9d99ee1a426cf2552d34e27615b934836f4268ad3128facb5dee517f47c"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.1.1/consul_1.1.1_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
