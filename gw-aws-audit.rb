# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GwAwsAudit < Formula
  desc "A set of commands to audit AWS usage to identify cost savings and security issues."
  homepage "https://goodwaygroup.github.io/gw-aws-audit/"
  version "1.21.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.0/gw-aws-audit_1.21.0_darwin_amd64.tar.gz"
    sha256 "039fd577b8ba3b5a87ff4d5611ed5e45c2c7144dcdcfed9e99a5eedb1cdbf499"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.0/gw-aws-audit_1.21.0_darwin_arm64.tar.gz"
    sha256 "b367ea931882890a5aac8152a0698dbeaf21115f85374cc7658adfc7f48637b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.0/gw-aws-audit_1.21.0_linux_amd64.tar.gz"
    sha256 "acbc2b3afa288bc1f776552d98bdad40d4cc49633cbc359bb4477fb5dbe5ce19"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.0/gw-aws-audit_1.21.0_linux_armv6.tar.gz"
    sha256 "cd092a5e249408f4bc4936b9a5c6623564eb483400b228bec91e8cdb24304f4e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.21.0/gw-aws-audit_1.21.0_linux_arm64.tar.gz"
    sha256 "42169a9bda086dc0b0d6a0fd5a00f3f17ded32869c23f7eb958d78fe9590c4cc"
  end

  def install
    bin.install "gw-aws-audit"
  end

  test do
    system "#{bin}/gw-aws-audit --help"
  end
end
