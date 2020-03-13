cask "consul@1.6.0-beta1" do
  version "1.6.0-beta1"
  sha256 "8ee5b90693460b1bf043f095361f7ec0ad21135b2145af4fe4d40b39f9c0daff"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.6.0-beta1/consul_1.6.0-beta1_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
