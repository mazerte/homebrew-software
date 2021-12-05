class AwsVpn < Formula
  desc "Easy CLI to create and manage vpn connection to your AWS VPC"
  homepage "https://github.com/mazerte/aws-vpn"
  url "https://github.com/mazerte/aws-vpn/releases/download/v0.1.5/aws-vpn.tar.gz"
  sha256 "6452ccfe913bbd459a55eb035c6c3f3241499074112b7ef0e83db1acd031c1c0"
  license "MIT"

  depends_on "awscli"
  depends_on "benwebber/tunnelblickctl/tunnelblickctl"

  def install
    ENV["PATH"] = "#{buildpath}:#{ENV["PATH"]}"
    bin.install "aws-vpn"
  end

  test do
    assert_match "aws-vpn", `#{bin}/aws-vpn --help`.chomp
  end
end
