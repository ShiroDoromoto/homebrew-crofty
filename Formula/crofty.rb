class Crofty < Formula
  homepage "https://github.com/ShiroDoromoto/crofty"
  version "0.17.0"
  license "AGPL-3.0"

  depends_on "hugo"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.0/crofty_0.17.0_darwin_arm64.tar.gz"
      sha256 "fe9556e75bccf0ba6e6e7c80aa3fc549d18eb14ac07b10e48a81d0e1b799271a"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.0/crofty_0.17.0_darwin_amd64.tar.gz"
      sha256 "a2af37747c0ba6bcebb689e9065fedbb856ef4c97085982ab35f585c6b38fa02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.0/crofty_0.17.0_linux_arm64.tar.gz"
      sha256 "ab12eaa7cb2479a13305e68911860d4941b8d943734ada80577e6589b4d184e1"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.0/crofty_0.17.0_linux_amd64.tar.gz"
      sha256 "18d6d081532404419e5d9af437f15fbf0ba0d684a2751517442efbf87c009098"
    end
  end

  def install
    bin.install "crofty"
  end

  test do
    assert_match "0.17.0", shell_output("#{bin}/crofty version")
  end
end
