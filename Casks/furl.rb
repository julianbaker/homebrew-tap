cask "furl" do
  version "1.0.0"
  sha256 "7156452ea4f9d52b6acb454ad20f467696c3fe1d29575f24a8d3f78a12058c5a" # updated by Furl's release pipeline

  url "https://github.com/julianbaker/Furl/releases/download/v#{version}/Furl-#{version}.zip"
  name "Furl"
  desc "Menu bar utility that makes off-screen overflow items reachable (Accessibility-only)"
  homepage "https://github.com/julianbaker/Furl"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Furl.app"

  zap trash: [
    "~/Library/Preferences/design.julianbaker.Furl.plist",
  ]
end
