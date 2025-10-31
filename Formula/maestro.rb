# Generated with JReleaser 1.13.1 at 2025-10-31T08:07:03.333918007Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/xc2/maestro/releases/download/cli-2.0.8-fork20251031080452/maestro.zip"
  version "2.0.8-fork20251031080452"
  sha256 "35e5f8bb3fb8767ec774eb63ffffb6ce5a423686f235413d360b8f77e968a2bb"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro-fork" => "maestro-fork"
  end

  test do
    output = shell_output("#{bin}/maestro-fork --version")
    assert_match "2.0.8-fork20251031080452", output
  end
end
