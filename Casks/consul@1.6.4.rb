cask "consul@1.6.4" do
  version "1.6.4"
  sha256 "0bfd2e8bcf6f7a434c462cc1eb93f631e9b69f76ffcf110f4566a3843ae65e82"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.6.4/consul_1.6.4_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
