cask "consul@1.0.1" do
  version "1.0.1"
  sha256 "f894e95936fc80da93f47d327b7a712ae2902cf454027eac1d36666cbca9b560"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.0.1/consul_1.0.1_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
