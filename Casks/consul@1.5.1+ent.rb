cask "consul@1.5.1+ent" do
  version "1.5.1+ent"
  sha256 "772fcc18a1ddfdf99e2032ec8a7e070c24e27429cdd24315e2f16f9509105cc7"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.5.1+ent/consul_1.5.1+ent_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
