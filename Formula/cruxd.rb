class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.2.2"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.2/cruxd-linux-amd64.tar.gz"
  sha256 "95adaeade78cd8a6c32f51e7225988703dce0a2e391a97187d2f87b249c642e7"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.2/cruxd-linux-arm64.tar.gz"
      sha256 "e8e3b7c367df17f0b9772988849d86d70f0e1a5e158ffdba9699ed093d06da10"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
