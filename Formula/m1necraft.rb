class M1necraft < Formula
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"
  url "https://github.com/raphtlw/m1necraft/archive/v0.1.0.tar.gz"
  sha256 "87104e1a20813e210732c7360f9e0dbda6e5b960b791b071d1954b164a0d5033"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "m1necraft", *std_cargo_args
  end

  test do
    system "#{bin}/m1necraft", "--help"
  end
end
