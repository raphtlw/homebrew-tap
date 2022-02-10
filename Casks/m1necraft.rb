cask "m1necraft" do
  version "0.2.0"
  sha256 "a3738d0513d736918a6d71535ef3d85dd184af267c05698e49ac4c6b48f38e17"
  
  url "https://github.com/raphtlw/m1necraft/releases/latest/download/M1necraft.app.zip"
  name "M1necraft"
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"
  
  app "M1necraft.app"
  
  zap trash: [
    '~/Library/Application Support/raphtlw.apps.M1necraft'
  ]
end
