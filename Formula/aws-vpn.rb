class AwsVpn < Formula
  desc "Easy CLI to create and manage vpn connection to your AWS VPC"
  homepage "https://github.com/mazerte/aws-vpn"
  url "https://github.com/mazerte/aws-vpn/releases/download/v0.1.8/aws-vpn.tar.gz"
  sha256 "db2942fbafaa255fee6c2468b3e815252a58e76a20b3e60bab4e1b86a931e816"
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
