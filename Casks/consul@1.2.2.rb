cask "consul@1.2.2" do
  version "1.2.2"
  sha256 "c6ebdb0ed57aae536b94aa6ea53ed50e58200df50e46e4e4f2765cd47659d40a"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.2.2/consul_1.2.2_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
