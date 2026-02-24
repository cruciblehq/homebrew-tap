class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.6"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.6/cruxd-linux-amd64.tar.gz"
  sha256 "1ff43a9f64f7ac55906c80f5925cf21046e5a6a1979dfd3e7cf2be33b6bf0978"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.6/cruxd-linux-arm64.tar.gz"
      sha256 "62c18d0bfde57f1a626326d6ed3f87eb88b0e8c947124d6cc4c7a349a0512a3d"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
