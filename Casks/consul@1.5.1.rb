cask "consul@1.5.1" do
  version "1.5.1"
  sha256 "c6e1fd7de0e901aef1e5068ea4b254709aa921d7b897f96b491d341ae795c94b"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.5.1/consul_1.5.1_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
