cask "tannlaus" do
  version "0.2.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
