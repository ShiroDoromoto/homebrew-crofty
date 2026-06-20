class Crofty < Formula
  homepage "https://github.com/ShiroDoromoto/crofty"
  version "0.15.0"
  license "AGPL-3.0"

  depends_on "hugo"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.15.0/crofty_0.15.0_darwin_arm64.tar.gz"
      sha256 "5929ae17686d7ecb27945d5a45822f0bd0bf7b648b85a8b68a423e28f6b850b5"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.15.0/crofty_0.15.0_darwin_amd64.tar.gz"
      sha256 "c7403c42fa450d63c216e52aef1d453c21bd4f4503b0d6d32dc5d2ab9901cf08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.15.0/crofty_0.15.0_linux_arm64.tar.gz"
      sha256 "4810c3d67b9eb642af46ef2bcafffb3b586df7e163f51ed1b9c39924da8ae742"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.15.0/crofty_0.15.0_linux_amd64.tar.gz"
      sha256 "c97a4c50e6e584286682c17ff3e23d9bc30143ec3f6a4dd56796c000838f7c29"
    end
  end

  def install
    bin.install "crofty"
  end

  test do
    assert_match "0.15.0", shell_output("#{bin}/crofty version")
  end
end
