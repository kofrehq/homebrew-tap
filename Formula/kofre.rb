class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/kofrehq/kofre-releases"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.5.1/kofre-macos-arm64"
      sha256 "759c71e2754e54c2bb60d8283ed4a269ef82d53132b22d7b39331a51bdb4828f"
    end
    on_intel do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.5.1/kofre-macos-x64"
      sha256 "cec38a8bf96f41cdcadd017a2b4f5b81b66f6a90dde77be4bfbec45508e46d73"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kofrehq/kofre-releases/releases/download/v0.5.1/kofre-linux-x64"
      sha256 "abac1e8945f6421330676d494dea72be886fbeb0314c34bf4aa6ad1025f9bc52"
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
