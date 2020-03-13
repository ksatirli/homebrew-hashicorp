cask "vagrant@1.8.7" do
  version "1.8.7"
  sha256 "14d68f599a620cf421838ed037f0a1c4467e1b67475deeff62330a21fda4937b"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast "https://github.com/hashicorp/vagrant/releases.atom"
  name "Vagrant"
  homepage "https://www.vagrantup.com/"

  pkg "vagrant.pkg", allow_untrusted: true

  uninstall script: {
    executable: "uninstall.tool",
    input: ["Yes"],
    sudo: true
  },
            pkgutil: "com.vagrant.vagrant"

  zap trash: "~/.vagrant.d"
end
