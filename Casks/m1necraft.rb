cask "m1necraft" do
  version "0.2.2"
  sha256 :no_check

  url "https://raw.githubusercontent.com/raphtlw/m1necraft/main/installer/install.sh",
      verified: "raw.githubusercontent.com/raphtlw/m1necraft/"
  name "M1necraft"
  desc "Patch Minecraft launcher to run Minecraft natively on ARM"
  homepage "https://raph.codes/projects/m1necraft"

  installer script: "#{staged_path}/install.sh"

  uninstall trash: "/Applications/M1necraft.app"

  zap trash: [
    "~/Library/Application Support/raphtlw.apps.M1necraft",
  ]
end
