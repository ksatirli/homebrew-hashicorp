class Vagrant < Formula
  desc "Vagrant 1.8.7"
  version "1.8.7"
  homepage 'https://www.vagrantup.com/'
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  sha256 'ac16217b114d8816264700e41114b62acd0c071d2699ae13954086ae3fcb151c'

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
