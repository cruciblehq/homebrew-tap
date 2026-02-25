class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.8"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.8/cruxd-linux-amd64.tar.gz"
  sha256 "02cfb43f3de94d3037bd91eea96a232b34c32cabfbb3dd5686aa2942c6398d26"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.8/cruxd-linux-arm64.tar.gz"
      sha256 "192ab35ccd85ab02c9e72ef054f72e9eddf8d97d39bbc152a15be4b7bb530c38"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
