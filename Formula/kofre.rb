class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/kofrehq/kofre-releases"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.6.0/kofre-macos-arm64"
      sha256 "20b41c9c1c518002ec69dbf787b6e2eeae5f07205f1849fde7b8024fcd4c68aa"
    end
    on_intel do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.6.0/kofre-macos-x64"
      sha256 "1071d52b6010e77421e83b0f8ed13a65edfab8a75f7f5f788ae15d89353de1bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.6.0/kofre-linux-x64"
      sha256 "88fdcd8b0e384a6b028dbaba43b8a4604068250977720f997ddd968918b4e52d"
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
