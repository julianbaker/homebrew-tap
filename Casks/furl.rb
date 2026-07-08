cask "furl" do
  version "1.0.2"
  sha256 "34ffe75a61f64c8ae815c4ade3af9ec01ad60f919d94bb0ef1ab4ca11cf32f79" # updated by Furl's release pipeline

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
