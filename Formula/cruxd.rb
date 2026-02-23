class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.3"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.3/cruxd-linux-amd64.tar.gz"
  sha256 "b90cffb831f5968ed4b4aad14cd3363cdb70b3d3ddcc8103f82d5258058566ee"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.3/cruxd-linux-arm64.tar.gz"
      sha256 "f518fdea43c34b4c39f4b2eee0bf85bb688ea38611b2e589b03336b2e01bb22e"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
