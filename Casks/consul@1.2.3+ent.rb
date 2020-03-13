cask "consul@1.2.3+ent" do
  version "1.2.3+ent"
  sha256 "648366ecdd83cfc19145ee5e7db4d6844f6929e666f2690c37cc04ee661d4386"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.2.3+ent/consul_1.2.3+ent_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
