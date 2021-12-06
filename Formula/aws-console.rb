class AwsConsole < Formula
  desc "Open the AWS console with your CLI credentials where your needed to be!"
  homepage "https://github.com/mazerte/aws-console"
  url "https://github.com/mazerte/aws-console/releases/download/v0.1.0/aws-console.tar.gz"
  sha256 "eee3b4a4aa6e8a5ab70ba601fb2a7b2e7813597064bcdf530d68482e7a904fb2"
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
