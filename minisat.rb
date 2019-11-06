class Minisat < Formula
  desc "SAT solver"
  homepage "http://minisat.se/"
  url "https://github.com/jordi-petit/minisat/archive/2.2.2.tar.gz"
  sha256 "e67d44c41ca0e9c19a03ded47cd20eee6d9f91057b1d00b0a0c75e04902ea1e0"

  def install
    system "make config prefix=#{prefix}"
    system "make install"
  end

  test do
    system "false"
  end
end
