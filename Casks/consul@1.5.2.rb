cask "consul@1.5.2" do
  version "1.5.2"
  sha256 "6e11fcaa18682eb72db58dd5fb37697900742e2e35a44619027ebcb53b339dbb"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.5.2/consul_1.5.2_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
