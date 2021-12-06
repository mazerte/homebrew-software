class AwsVpn < Formula
  desc "Easy CLI to create and manage vpn connection to your AWS VPC"
  homepage "https://github.com/mazerte/aws-vpn"
  url "https://github.com/mazerte/aws-vpn/releases/download/v0.2.0/aws-vpn.tar.gz"
  sha256 "e9f315b327a390babf44bc55bbd645bd73bf1c1736b4b3aef07d0e4e72704fad"
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
