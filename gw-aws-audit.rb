# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GwAwsAudit < Formula
  desc "A set of commands to audit AWS usage to identify cost savings and security issues."
  homepage "https://goodwaygroup.github.io/gw-aws-audit/"
  version "1.21.2"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.2/gw-aws-audit_1.21.2_darwin_amd64.tar.gz"
      sha256 "fe5475a4b2010aa03d0d7c06612d8759de9948c061a988c33ae326838d2b1d4b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.2/gw-aws-audit_1.21.2_darwin_arm64.tar.gz"
      sha256 "3c1292ebe682b7bebaa11c68b6a7ad9c28988aec9714b85262ebc525b49a87f2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.2/gw-aws-audit_1.21.2_linux_amd64.tar.gz"
      sha256 "e6f2bcbfe34cde9e63cc5394df94ec3068468df10a4e955e259c2d9f0aa53bc4"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.2/gw-aws-audit_1.21.2_linux_armv6.tar.gz"
      sha256 "cbbe6c10eee1ba1d48d6feaeac00e7f6f154a57ada01031456feed57060442e7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.2/gw-aws-audit_1.21.2_linux_arm64.tar.gz"
      sha256 "f6b76a87160085e4c3f2799bd7796bded924c59bf8e3b9c54cb93f406b036a1e"
    end
  end

  def install
    bin.install "gw-aws-audit"
  end

  test do
    system "#{bin}/gw-aws-audit --help"
  end
end
