cask "tannlaus" do
  version "1.1.1"
  sha256 "515cda7fd731b2ef6b71e7207712923f88ef3654405ecdd64ac280a678153f3b"

  url "https://github.com/mmalvik/tannlaus/releases/download/v#{version}/Tannlaus-#{version}.zip"
  name "Tannlaus"
  desc "Turns Bluetooth off during sleep and back on at wake"
  homepage "https://github.com/mmalvik/tannlaus"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tannlaus.app"

  uninstall quit: "com.tannlaus.app"

  zap trash: [
    "~/Library/Application Scripts/com.tannlaus.app",
    "~/Library/Containers/com.tannlaus.app",
  ]
end
