# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GwAwsAudit < Formula
  desc "A set of commands to audit AWS usage to identify cost savings and security issues."
  homepage "https://goodwaygroup.github.io/gw-aws-audit/"
  version "1.18.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.18.0/gw-aws-audit_1.18.0_darwin_amd64.tar.gz"
    sha256 "25d65738493824fa3067a64e0ce62e0849bbfd93e90d4781215f0cd574b147fc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.18.0/gw-aws-audit_1.18.0_darwin_arm64.tar.gz"
    sha256 "3b4f5fc61b427bc55fbe7545a5e52edb5fa8cdb69e996ec6521f3938b460b3af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.18.0/gw-aws-audit_1.18.0_linux_amd64.tar.gz"
    sha256 "d177247d54b9110aee02b135b5db7476cbd8eb1bb8d5a1a6e166dd7ec7909091"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.18.0/gw-aws-audit_1.18.0_linux_armv6.tar.gz"
    sha256 "17c39eef60567c59c2704bf05a31e57817aea31c383cd98a0eed4b36beb01f2b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/GoodwayGroup/gw-aws-audit/releases/download/v1.18.0/gw-aws-audit_1.18.0_linux_arm64.tar.gz"
    sha256 "c8e45fdfa0fa2ed97ea7326621a7fc60a0b2fc2f5bf61034cc422066c33e18af"
  end

  def install
    bin.install "gw-aws-audit"
  end

  test do
    system "#{bin}/gw-aws-audit --help"
  end
end
