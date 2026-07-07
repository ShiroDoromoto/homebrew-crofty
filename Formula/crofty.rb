class Crofty < Formula
  homepage "https://github.com/ShiroDoromoto/crofty"
  version "0.17.1"
  license "AGPL-3.0"

  depends_on "hugo"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.1/crofty_0.17.1_darwin_arm64.tar.gz"
      sha256 "acc9efdc983c5fbd9271a78c7bc29e61ee5c43134f8f493637e57451ca0d59df"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.1/crofty_0.17.1_darwin_amd64.tar.gz"
      sha256 "b781a0ea6833cbd97ef8b7ce796105f3572973ac126946d8fe7dfd8b8845f486"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.1/crofty_0.17.1_linux_arm64.tar.gz"
      sha256 "b7f05793bbc57d1262416a8f12f477a7df0945b17a79ef21c9bb7752dc8f2704"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.1/crofty_0.17.1_linux_amd64.tar.gz"
      sha256 "c36adb2a6d7fda602af121ecbf4ebd6c0e2987c50f656f113a1fb6a14708c1b9"
    end
  end

  def install
    bin.install "crofty"
  end

  test do
    assert_match "0.17.1", shell_output("#{bin}/crofty version")
  end
end
