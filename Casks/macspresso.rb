cask "macspresso" do
  version "1.0"
  sha256 "1be9309e9c2677f706374c749e152997f67f32bcd90718b4a922eebe6980e337"

  url "https://github.com/krisapa/MacSpresso/releases/download/#{version}/MacSpresso_#{version}.dmg"
  name "MacSpresso"
  desc "Menu bar app to manage system caffeination"
  homepage "https://github.com/6b70/MacSpresso"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "MacSpresso.app"

  zap trash: ""
end
