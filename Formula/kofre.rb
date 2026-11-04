class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/kofrehq/kofre-releases"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.7.0/kofre-macos-arm64"
      sha256 "5e4fc7fa4b15dadfd569919df32012e2fe305c5ccc1d788a77d2f0c42b77cbd6"
    end
    on_intel do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.7.0/kofre-macos-x64"
      sha256 "e25be4099b9a00c947eb28e020e2514dbac4bf12169e3ee28c79b508671ea6e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.7.0/kofre-linux-x64"
      sha256 "d4e0126fc2b37d1f8b75ebf2406bca1703f18b2d320f8023eda82f3fecfd368d"
    end
  end

  def install
    binary = Dir["kofre-*"].first
    bin.install binary => "kofre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kofre --version")
  end
end
