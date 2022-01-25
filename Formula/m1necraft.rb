class M1necraft < Formula
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"
  url "https://github.com/raphtlw/m1necraft/archive/v0.1.1.tar.gz"
  sha256 "b3d9cbcf875d9b3a308b37673f23cd0b869f10619328e956b55d95102acb2d58"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "m1necraft", *std_cargo_args
  end

  test do
    system "#{bin}/m1necraft", "--help"
  end
end
