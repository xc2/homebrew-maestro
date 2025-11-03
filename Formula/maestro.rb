# Generated with JReleaser 1.13.1 at 2025-11-03T10:27:28.94424077Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/xc2/maestro/releases/download/cli-2.0.8-fork20251103102714/maestro.zip"
  version "2.0.8-fork20251103102714"
  sha256 "1910d291f6625585d5e0f6f411b985b9a1f32baa19fa353ba4cbdea0ec4a4d88"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro-fork" => "maestro-fork"
  end

  test do
    output = shell_output("#{bin}/maestro-fork --version")
    assert_match "2.0.8-fork20251103102714", output
  end
end
