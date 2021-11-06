cask "companion" do
  version "2.1.3,6b6820cd"
  desc "Bitfocus Companion enables the reasonably priced Elgato Streamdeck to be a professional shotbox surface for an increasing amount of different presentation switchers, video playback software and broadcast equipment."
  homepage "https://bitfocus.io/companion"
  url "https://builds.bitfocus.io/companion/stable/companion-#{version.before_comma}-#{version.after_comma}-osx.zip"
  sha256 :no_check

  name "Companion"

  app "Companion.app"
end
