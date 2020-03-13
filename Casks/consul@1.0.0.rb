cask "consul@1.0.0" do
  version "1.0.0"
  sha256 "b2980101554e9ace4c0d56e1d27ab574d166db6625a91d1157a7c41de299313b"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.0.0/consul_1.0.0_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
