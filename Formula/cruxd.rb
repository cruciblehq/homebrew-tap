class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.2.4"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.4/cruxd-linux-amd64.tar.gz"
  sha256 "87f4232dbf48e33bf6d733a9d6ae8ecb510b3f5bb4d5aa38c3a7b23dcc2ece7d"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.4/cruxd-linux-arm64.tar.gz"
      sha256 "5e358c9f8d88d6bd88b9fc0bc1cb5f415b9c2528cdb944f06563632155496148"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
