cask "tannlaus" do
  version "1.1.0"
  sha256 "dede4f90ba37d3b88db8ffbe95fc5f0ad9b3c7a13060774cd3506ac6889128b2"

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
