# Generated with JReleaser 1.13.1 at 2025-11-03T11:35:33.091213916Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/xc2/maestro/releases/download/cli-2.0.8-fork20251103113519/maestro.zip"
  version "2.0.8-fork20251103113519"
  sha256 "64c382897e9e473d34377d93cfac0ec15800bd12c9b824c8fbacdf3d5b63c628"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro-fork" => "maestro-fork"
  end

  test do
    output = shell_output("#{bin}/maestro-fork --version")
    assert_match "2.0.8-fork20251103113519", output
  end
end
