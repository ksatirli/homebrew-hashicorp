cask "vagrant@2.0.0" do
  version "2.0.0"
  sha256 "596fba741f99a083eed9751973b4a3016c99de611165ca561922008d23008494"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast "https://github.com/hashicorp/vagrant/releases.atom"
  name "Vagrant"
  homepage "https://www.vagrantup.com/"

  pkg "vagrant.pkg"

  uninstall script: {
    executable: "uninstall.tool",
    input: ["Yes"],
    sudo: true
  },
            pkgutil: "com.vagrant.vagrant"

  zap trash: "~/.vagrant.d"
end
