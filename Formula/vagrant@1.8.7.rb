class VagrantAT187 < Formula
  desc "Vagrant 1.8.7"
  version "1.8.7"
  homepage "https://www.vagrantup.com/"
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  sha256 "14d68f599a620cf421838ed037f0a1c4467e1b67475deeff62330a21fda4937b"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end