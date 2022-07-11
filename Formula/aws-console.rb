class AwsConsole < Formula
  desc "Open the AWS console with your CLI credentials where your needed to be!"
  homepage "https://github.com/mazerte/aws-console"
  url "https://github.com/mazerte/aws-console/releases/download/v0.1.1/aws-console.tar.gz"
  sha256 "171f5bc6a44f5851969caf22a56708f3c52284ae20a41544bb8394bfcc05ff9c"
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
