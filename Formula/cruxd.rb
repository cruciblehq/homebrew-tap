class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.2.1"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.1/cruxd-linux-amd64.tar.gz"
  sha256 "ff941ea771e6967d5979d715bb1600243386014e390350334d2b21a4ff3f59ae"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.1/cruxd-linux-arm64.tar.gz"
      sha256 "ead6fb2341c4060af4d5f4e1c3876878d14a05ba75a6187ff0c2dd385b0ccbce"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
