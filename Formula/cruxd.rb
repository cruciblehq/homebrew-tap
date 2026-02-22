class Cruxd < Formula
  desc "cruxd is a container runtime for testing and fuzzing containerized applications."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.0/cruxd-linux-amd64.tar.gz"
      sha256 "bf4b16d817e35fd6715073bd2c33b463e0023ba829d28371a17af542c028d32d"
    elsif Hardware::CPU.arm?
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.0/cruxd-linux-arm64.tar.gz"
      sha256 "683bc7823ee1e33bf77f5548b88eb3bc873d3b13d019c48f8c1135de7c8ee4af"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
