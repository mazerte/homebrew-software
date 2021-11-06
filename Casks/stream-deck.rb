cask "stream-deck" do
  version "5.1.3,14750"
  desc "Unleash your creative genius and make waves across Twitch and YouTube."
  homepage "https://www.elgato.com/en/stream-deck"
  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version.before_comma}.#{version.after_comma}.pkg"
  sha256 :no_check

  name "Stream Deck"
  pkg "Stream_Deck_#{version.before_comma}.#{version.after_comma}.pkg"
end
