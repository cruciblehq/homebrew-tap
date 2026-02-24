class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.7"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.7/cruxd-linux-amd64.tar.gz"
  sha256 "a867cdb0fc957cf9ea39de846bb0ba11fc7a731b047d504af2f3bee7083a93e2"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.7/cruxd-linux-arm64.tar.gz"
      sha256 "5c5c722cbb05df9ff456817594b70d33d26859855d77656c2d2e644ea7d190e7"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
