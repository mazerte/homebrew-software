cask "luminar-ai" do
  desc "AI photo editing. Awesome. Faster."
  homepage "https://skylum.com/luminar-ai-b"
  version "1.5.0,9981"
  url "https://downloads.skylum.com/luminarai/mac/#{version.before_comma}/LuminarAI_Distribution_v#{version.before_comma.dots_to_underscores}_#{version.after_comma}.zip"
  sha256 :no_check
  
  name "Luminar AI"
  app "Luminar AI.app"
end