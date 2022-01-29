class M1necraft < Formula
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"
  url "https://github.com/raphtlw/m1necraft/archive/v0.1.5.tar.gz"
  sha256 "6400bd3586da1ac0f278db28f0b925643f70ad09e6dd65053e64477d5d7ddbbf"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "m1necraft", *std_cargo_args
  end

  test do
    system "#{bin}/m1necraft", "--help"
  end
end
