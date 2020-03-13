cask "consul@1.4.4+ent" do
  version "1.4.4+ent"
  sha256 "d0caa709148ebfbe6aad4081e225bc3a1b568e96a461c612e0bec0d5fe179c38"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.4.4+ent/consul_1.4.4+ent_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
