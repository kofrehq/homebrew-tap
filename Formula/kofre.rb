class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/kofrehq/kofre-releases"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.7.1/kofre-macos-arm64"
      sha256 "bd398a12b07e1cf566e7a08de5fbf84e311bb6eecaef72010fb906a74ec3f721"
    end
    on_intel do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.7.1/kofre-macos-x64"
      sha256 "969c7994f93ad21727c0d45e28c3a48ef4fe3f896b3febea7ef8ffb52c22f3ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.7.1/kofre-linux-x64"
      sha256 "a11831c134aa24acd5fd8cf2f26b5d925f27c4faec53157f00afe3f20cd0912f"
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
