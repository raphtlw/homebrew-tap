cask "m1necraft" do
  version "0.1.5"
  sha256 "a3738d0513d736918a6d71535ef3d85dd184af267c05698e49ac4c6b48f38e17"
  
  url "https://github.com/raphtlw/m1necraft/releases/latest/download/m1necraft-macOS-X64"
  name "M1necraft"
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"
  
  app "M1necraft.app"
end
