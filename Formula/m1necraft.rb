class M1necraft < Formula
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"
  url "https://github.com/raphtlw/m1necraft/archive/v0.1.4.tar.gz"
  sha256 "e444ad1d9031e3de89d3b10dd4d69d6662da769502e5787d12fe7a54cc010203"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "m1necraft", *std_cargo_args
  end

  test do
    system "#{bin}/m1necraft", "--help"
  end
end
