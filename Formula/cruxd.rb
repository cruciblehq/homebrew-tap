class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.1"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.1/cruxd-linux-amd64.tar.gz"
  sha256 "3bd1b7dc4f8811a52c850b3649a6cfc9993217122ffe4532455de8ac9daa6aec"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.1/cruxd-linux-arm64.tar.gz"
      sha256 "126070ee1ad17ff546acd98eccd39eaa1808dc6650645e237e9a659581f1bddb"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
