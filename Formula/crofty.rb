class Crofty < Formula
  desc "Own your website: a Markdown-to-published-site pipeline"
  homepage "https://github.com/ShiroDoromoto/crofty"
  version "0.17.2"
  license "AGPL-3.0"

  # v0.17.2 is the last release on this tap. Newer versions are elsewhere; the
  # formula still installs so that `brew upgrade` does not error out on anyone.
  deprecate! date: "2026-07-10", because: "crofty no longer ships to Homebrew; install from https://crofty.site"

  depends_on "hugo"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.2/crofty_0.17.2_darwin_arm64.tar.gz"
      sha256 "c8fcc1709fb7ca0c403aee7942aad7372472b838424c2cf5318e5a258c7ead48"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.2/crofty_0.17.2_darwin_amd64.tar.gz"
      sha256 "a606ffce58cf7b54f3a3e2c53311927340bbec413c03aa89faa3101d873efee6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.2/crofty_0.17.2_linux_arm64.tar.gz"
      sha256 "09332ac20a57010434d3a3d9b19d57c8a160dc8520249770f0eb7229c624a40d"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/crofty/releases/download/v0.17.2/crofty_0.17.2_linux_amd64.tar.gz"
      sha256 "959dcad4f8d87173f66d576f5f163d0d4782a6734ec66321ef75ba2d1d2d16a9"
    end
  end

  def install
    bin.install "crofty"
  end

  test do
    assert_match "0.17.2", shell_output("#{bin}/crofty version")
  end
end
