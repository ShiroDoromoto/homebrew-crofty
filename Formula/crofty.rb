class Crofty < Formula
  homepage "https://github.com/ShiroDoromoto/crofty"
  version "0.16.1"
  license "AGPL-3.0"

  depends_on "hugo"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.16.1/crofty_0.16.1_darwin_arm64.tar.gz"
      sha256 "1fd41a12dd2567ac2d3261c2f072d26fc851854f9b7348be5adc957589d31c99"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.16.1/crofty_0.16.1_darwin_amd64.tar.gz"
      sha256 "309b28c4e7d7d1a08f3fd6de4270e24688affbcd79551508d1661b69fd031c79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.16.1/crofty_0.16.1_linux_arm64.tar.gz"
      sha256 "54fa7af769d12824540dbd06796f7336fe4c56da3f6865d4707255d3d6da5cf9"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.16.1/crofty_0.16.1_linux_amd64.tar.gz"
      sha256 "5f8051a8e255732b2cec269db376b24704c646599582eb58e21c2c695e7efcef"
    end
  end

  def install
    bin.install "crofty"
  end

  test do
    assert_match "0.16.1", shell_output("#{bin}/crofty version")
  end
end
