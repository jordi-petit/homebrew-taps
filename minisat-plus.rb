class MinisatPlus < Formula
  desc "SAT solver with Pseudo-Boolean constraints"
  homepage "http://minisat.se/MiniSat+.html"
  url "https://github.com/jordi-petit/minisat-plus/archive/v1.0.1.tar.gz"
  sha256 "540017069dc5d8480f2f0b0eed15bcc05460c2e553ba78641716a26c366e7897"

  depends_on "gmp"
  depends_on "gcc"

  def install
    system "make", "rs"
    system "make", "rx"
    bin.install "minisat+_script"
    bin.install "minisat+_64-bit_static"
    bin.install "minisat+_bignum_static"
  end

  test do
    system "false"
  end
end
