# install with brew install --HEAD ./lingeling.rb

class Lingeling < Formula
  desc "SAT solver"
  homepage "http://fmv.jku.at/lingeling/"
  head "https://github.com/arminbiere/lingeling.git"

  def install
    system "./configure.sh"
    system "make"
    bin.install "lingeling"
    bin.install "plingeling"
    bin.install "ilingeling"
    bin.install "treengeling"
    include.install "lglib.h"
    lib.install "liblgl.a"
  end

  test do
    system "false"
  end
end
