cask "stemroller" do
  version "2.1.1"
  sha256 "ec811514e04333aa15129c3886630da23e236ecd066e8afdfa437eb1aa37ada1"

  url "https://github.com/stemrollerapp/stemroller/releases/download/#{version}/stemroller-#{version}-mac.zip",
      verified: "https://github.com/stemrollerapp/stemroller/"
  name "StemRoller"
  desc "Isolate vocals, drums, bass, and other instrumental stems from any song"
  homepage "https://www.stemroller.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "StemRoller.app"

  zap trash: "~/Library/Saved Application State/com.stemroller.stemroller.savedState"
end
