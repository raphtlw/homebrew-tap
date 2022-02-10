cask "m1necraft" do
  version "0.2.0"
  sha256 "f98eeda3518b7a7e1d31ac1a7d2b2773e669c3bbe464551dc2543c2ef3f277b7"
  
  url "https://github.com/raphtlw/m1necraft/releases/latest/download/M1necraft.app.zip"
  name "M1necraft"
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"
  
  app "M1necraft.app"
  
  zap trash: [
    '~/Library/Application Support/raphtlw.apps.M1necraft'
  ]
end
