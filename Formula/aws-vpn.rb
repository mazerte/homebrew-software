class AwsVpn < Formula
  desc "Easy CLI to create and manage vpn connection to your AWS VPC"
  homepage "https://github.com/mazerte/aws-vpn"
  url "https://github.com/mazerte/aws-vpn/releases/download/v0.1.10/aws-vpn.tar.gz"
  sha256 "377d6b6ec5f07a7aba9d938463e1b5032919bf879e77fbf506d3e30037c2bec8"
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
