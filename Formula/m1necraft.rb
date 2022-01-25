class M1necraft < Formula
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"
  url "https://github.com/raphtlw/m1necraft/archive/v0.1.1.tar.gz"
  sha256 "8976f9baa2e792b747d214320b58aae4223b6770572bfb8129fcee9178fb38dd"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "m1necraft", *std_cargo_args
  end

  test do
    system "#{bin}/m1necraft", "--help"
  end
end
