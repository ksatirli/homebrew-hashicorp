cask "consul@1.4.3+ent" do
  version "1.4.3+ent"
  sha256 "34e54fdc5a44de11617d21ad1d3f5939ac10147b7e7ee19446b323cd2afa4111"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.4.3+ent/consul_1.4.3+ent_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
