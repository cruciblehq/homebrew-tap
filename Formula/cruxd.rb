class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.2.0"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.0/cruxd-linux-amd64.tar.gz"
  sha256 "de1c1e8931fa61733521099dde395eb0767d6b2b816f2cd187a5e9567eafb315"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.2.0/cruxd-linux-arm64.tar.gz"
      sha256 "b128a20e7169931e60e611f79c3b1ce74a7e67999b130ebb9cd21a1f0b517506"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
