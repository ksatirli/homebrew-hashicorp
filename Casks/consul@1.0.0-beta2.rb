cask "consul@1.0.0-beta2" do
  version "1.0.0-beta2"
  sha256 "c41637a22e797a2e87556cf74f4cd7c264549e4d93da6c97cfabec0593965813"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.0.0-beta2/consul_1.0.0-beta2_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
