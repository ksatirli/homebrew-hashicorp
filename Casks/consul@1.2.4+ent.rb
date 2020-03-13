cask "consul@1.2.4+ent" do
  version "1.2.4+ent"
  sha256 "a1acdadd87f0b335df266b93f1c455392da7c4f96031164b5a78bfc8c915fc30"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.2.4+ent/consul_1.2.4+ent_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
