cask "consul@1.2.1+ent" do
  version "1.2.1+ent"
  sha256 "d56526d5e066300b8b66381c66f1beb5bfb44ac7ccc7db394d6b137858a93c54"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.2.1+ent/consul_1.2.1+ent_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
