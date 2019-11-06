class Cudd < Formula
  desc "CU Decision Diagram package"
  homepage "http://vlsi.colorado.edu/~fabio/"
  url "https://github.com/ivmai/cudd/archive/cudd-3.0.0.tar.gz"

  def install
    system "./configure  --enable-dddmp --enable-obj --prefix=#{prefix}"
    system "make -j"
    system "make install"
  end

  test do
    system "make check"
  end
end
