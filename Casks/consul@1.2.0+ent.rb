cask "consul@1.2.0+ent" do
  version "1.2.0+ent"
  sha256 "89780c2eaf09c9d051afc314eb394dd21ed984ff3982bba03439cda8f4252cf4"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.2.0+ent/consul_1.2.0+ent_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
