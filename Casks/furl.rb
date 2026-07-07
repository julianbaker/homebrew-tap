cask "furl" do
  version "1.0.1"
  sha256 "82fd0a956b45218d40090c9f1a8300a276776e81fd21e39faa35e43ce2cc222b" # updated by Furl's release pipeline

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
