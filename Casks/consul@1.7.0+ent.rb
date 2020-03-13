cask "consul@1.7.0+ent" do
  version "1.7.0+ent"
  sha256 "16a99f6d4b6edac20127c546392115fde9424322c93f3841a245b29fd325c283"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.7.0+ent/consul_1.7.0+ent_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
