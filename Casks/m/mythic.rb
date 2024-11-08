cask "mythic" do
  version "0.4.1"
  sha256 "cf2caaca287ae6d52929df094935f910c7f84fe6d569bb459925acbbed6e7493"

  url "https://github.com/MythicApp/Mythic/releases/download/v#{version}/Mythic.zip",
      verified: "github.com/MythicApp/Mythic/"
  name "Mythic"
  desc "Unique open-source game launcher with the ability to run Windows games"
  homepage "https://getmythic.app/"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Mythic.app"

  zap trash: [
    "~/Library/Application Support/Mythic",
    "~/Library/Caches/xyz.blackxfiied.Mythic.plist",
    "~/Library/HTTPStorages/xyz.blackxfiied.Mythic",
    "~/Library/HTTPStorages/xyz.blackxfiied.Mythic.binarycookies",
    "~/Library/Preferences/xyz.blackxfiied.Mythic.plist",
  ]
end
