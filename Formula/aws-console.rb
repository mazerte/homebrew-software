class AwsConsole < Formula
  desc "Open the AWS console with your CLI credentials where your needed to be!"
  homepage "https://github.com/mazerte/aws-console"
  url "https://github.com/mazerte/aws-console/releases/download/v0.0.2/aws-console.tar.gz"
  sha256 "46ae80f216b926f7710e1a2347d9d79bb758779d3211b3ef6178b6cf406ce0e8"
  license "MIT"

  depends_on "python@3.9"

  def install
    ENV["PATH"] = "#{buildpath}:#{ENV["PATH"]}"
    bin.install "aws-console"
  end

  test do
    assert_match "aws-console", `#{bin}/aws-console --help`.chomp
  end
end
