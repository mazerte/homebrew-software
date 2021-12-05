class AwsVpn < Formula
  desc "Easy CLI to create and manage vpn connection to your AWS VPC"
  homepage "https://github.com/mazerte/aws-vpn"
  url "https://github.com/mazerte/aws-vpn/releases/download/v0.1.9/aws-vpn.tar.gz"
  sha256 "71e050377fb875d94a6f3fa696e25e5a04422885868cb8a71578645ab8813b3c"
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
