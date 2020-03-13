cask "consul@1.0.0-beta1" do
  version "1.0.0-beta1"
  sha256 "3807e8bbdae963ce35c1205aa089d9cfb4f411342ef4d61f65e8b4e053b12cfb"

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/1.0.0-beta1/consul_1.0.0-beta1_darwin_amd64.zip"
  appcast "https://github.com/hashicorp/consul/releases.atom"
  name "Consul"
  homepage "https://www.consul.io/"

  auto_updates false

  binary "consul"
end
