cask "dashcam-viewer" do
  version "4.0.2"
  sha256 "e78a727597ce9876f707622b79be28c7ef303c1cc8d2a34bb9d92a2c129efce0"

  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg",
      verified: "filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  desc "View videos, GPS data, and G-force data recorded by dashcams and action cams"
  homepage "https://dashcamviewer.com/"

  livecheck do
    url "https://dashcamviewer.com/free-trial/"
    regex(%r{href=.*?/Dashcam[._-]Viewer[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "Dashcam Viewer.app"

  zap trash: [
    "~/Library/Application Support/earthshinesw",
    "~/Library/Caches/earthshinesw",
    "~/Library/Preferences/com.earthshinesw.DashcamViewer.plist",
  ]

  caveats do
    requires_rosetta
  end
end
