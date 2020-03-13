cask "consul@1.7.0-beta4" do
  version "1.7.0-beta4"
  sha256 "6b80adf745c12437074dd518fcc0b97821a77cebed183ac8b37118c423d4c978"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.7.0-beta4/consul_1.7.0-beta4_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
