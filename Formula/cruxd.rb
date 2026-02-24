class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.4"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.4/cruxd-linux-amd64.tar.gz"
  sha256 "fa8e84f190f170c850362429a6dcf54360973dd13cf5f4d9628412c857c20e2b"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.4/cruxd-linux-arm64.tar.gz"
      sha256 "61a5ec5facdbc5653922ac7e39d08944c012fc5f7eb0206424cccac72607d7d8"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
