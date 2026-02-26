class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.2.3"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.3/cruxd-linux-amd64.tar.gz"
  sha256 "52c3b1f91ea4f030ab116ecddbe7817afd9b3a9a513ca535c6cf0fe2a366a223"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.3/cruxd-linux-arm64.tar.gz"
      sha256 "9ba644312bdec4890038ed4ffd9f255530f1ec2585b43da0daadd21ade0d7de2"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
