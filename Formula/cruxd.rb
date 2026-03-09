class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.3.2"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.3.2/cruxd-linux-amd64.tar.gz"
  sha256 "7b154df15359cc4dbdde16aa07a4d78f08d7bbf7bc40293ea8069ac7e6c52bbd"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.3.2/cruxd-linux-arm64.tar.gz"
      sha256 "f7bc3518e45d21197aaec8984d4935f41e49263d2c3380977cb8a25cb076dfe9"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
