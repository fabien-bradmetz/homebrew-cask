cask "maccy" do
  version "0.15.1"
  sha256 "f356624344f569fe96ed90af043dd7704166a579cab7068d4cd36d1b2088eecb"

  # github.com/p0deje/Maccy/ was verified as official when first introduced to the cask
  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast "https://github.com/p0deje/Maccy/releases.atom"
  name "Maccy"
  homepage "https://maccy.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      [
        "~/Library/Preferences/org.p0deje.Maccy.plist",
        "~/Library/Application Scripts/org.p0deje.Maccy",
        "~/Library/Containers/org.p0deje.Maccy",
      ]
end
