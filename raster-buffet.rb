class RasterBuffet < Formula
  homepage "https://github.com/jdegges/raster-buffet"
  url "https://github.com/jdegges/raster-buffet/releases/download/0.1/raster-buffet-0.1.tar.gz"
  version "0.1"
  sha256 "eee23df91a74f95c760c85d840d429fdc28561c6c0c24dcf9c6aeb1d00d524b4"

  depends_on "ffmpeg" => :run
  depends_on "fftw" => :run
  depends_on "freeimage" => :run
  depends_on "libtool" => :run
  depends_on "loomlib" => :run
  depends_on "pkg-config" => :run

  def install
    system "./configure", "--without-swscale",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
