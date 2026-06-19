class Crofty < Formula
  homepage "https://github.com/ShiroDoromoto/crofty"
  version "0.14.0"
  license "AGPL-3.0"

  depends_on "hugo"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.14.0/crofty_0.14.0_darwin_arm64.tar.gz"
      sha256 "c9bf8ec78dfc20eae57e8eb30478dab9e9bec6343597389012dd1e88ff0742ec"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.14.0/crofty_0.14.0_darwin_amd64.tar.gz"
      sha256 "1f521d63c9adf5105425b96ad45b02900300a24c1c0f8ec093271cea34d0a18d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.14.0/crofty_0.14.0_linux_arm64.tar.gz"
      sha256 "7e82ec581baa6e0c316ad11b7cfe568089328763d5a41bca14e5cbef5b839580"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.14.0/crofty_0.14.0_linux_amd64.tar.gz"
      sha256 "fc65179c2671fb90e01d9fd0c58571cfcd6f993c20709d9a056f010656eb393a"
    end
  end

  def install
    bin.install "crofty"
  end

  test do
    assert_match "0.14.0", shell_output("#{bin}/crofty version")
  end
end
