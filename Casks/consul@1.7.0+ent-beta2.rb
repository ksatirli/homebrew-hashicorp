cask "consul@1.7.0+ent-beta2" do
  version "1.7.0+ent-beta2"
  sha256 "e853f63970329a22a7602de8ecd3896ea7da01ede3a2b062fc39930b5c52d8e4"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.7.0+ent-beta2/consul_1.7.0+ent-beta2_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
