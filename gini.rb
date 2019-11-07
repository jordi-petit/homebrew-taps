class Gini < Formula
  desc "A fast SAT solver"
  homepage "https://github.com/irifrance/gini"
  url "https://github.com/irifrance/gini/archive/v1.0.1.tar.gz"
  sha256 "526e9a2e4d805328e7b59560c26f5c904c30761c8688f2514b0065966790d0bb"
  depends_on "go" => :build

  # this formula is a bit fake, as the release is really not used

  def install
    system "mkdir", "go"
    ENV["GOPATH"] = buildpath/"go"
    cd buildpath/"go" do
      system "go", "get", "github.com/irifrance/gini"
      system "go", "get", "github.com/irifrance/gini..."
      bin.install "bin/gini"
    end
  end

  test do
    system "false"
  end
end
