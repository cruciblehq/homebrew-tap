class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.2"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.2/cruxd-linux-amd64.tar.gz"
  sha256 "f8d811617dffdbd183b4923b504ad120814084d52efd240deb7ec16cd9e504e9"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.2/cruxd-linux-arm64.tar.gz"
      sha256 "5f027d760a56ca025a7820fa705457e17c1c69c2a2844b1c7fb72853f393c0dd"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
