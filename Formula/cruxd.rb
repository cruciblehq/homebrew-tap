class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.3.1"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.3.1/cruxd-linux-amd64.tar.gz"
  sha256 "6de9fe13d33670d24a5f72e7ad6accdbf75d4212b6e680f5bae9609d79cb3bd7"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.3.1/cruxd-linux-arm64.tar.gz"
      sha256 "3900f22a21a903d32c0c05e0eb52133ca28f15352abcf8e5c39fe0c716e92cee"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
