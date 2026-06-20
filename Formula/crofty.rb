class Crofty < Formula
  homepage "https://github.com/ShiroDoromoto/crofty"
  version "0.16.0"
  license "AGPL-3.0"

  depends_on "hugo"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.16.0/crofty_0.16.0_darwin_arm64.tar.gz"
      sha256 "c3f7e22d9504ed63e3633d536d5209891320427b84245a833a74e1e6fa663b94"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.16.0/crofty_0.16.0_darwin_amd64.tar.gz"
      sha256 "17d4485a698bb6b6a94019cf429d7db336f6794d298321ed94590f864b89da87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.16.0/crofty_0.16.0_linux_arm64.tar.gz"
      sha256 "c4fe9ea6d9e85c1300ec02a465af8b73dee10794b608a5142280c46938b5405d"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.16.0/crofty_0.16.0_linux_amd64.tar.gz"
      sha256 "a6d7db6d1fecfc9b0c842915c3357f88a66c5f86c7fb331ae70e46ed8f9355fe"
    end
  end

  def install
    bin.install "crofty"
  end

  test do
    assert_match "0.16.0", shell_output("#{bin}/crofty version")
  end
end
