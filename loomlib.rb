class Loomlib < Formula
  homepage "https://github.com/jdegges/loomlib"
  url "https://github.com/jdegges/loomlib/releases/download/0.1/loomlib-0.1.tar.gz"
  version "0.1"
  sha256 "bd25f3bf5ba72beaff4b5fe8c4da2d2c97896330e2e52559b2f9facc8a3908c2"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
