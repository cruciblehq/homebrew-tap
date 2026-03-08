class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.3.0"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.3.0/cruxd-linux-amd64.tar.gz"
  sha256 "ab263892c71cfeb730e7fca6d528aa5f51a26582051210c0df307748d176467a"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.3.0/cruxd-linux-arm64.tar.gz"
      sha256 "16afda8206c0250145a42dcfd6ae0c2f73f3f93107b2df998143ee179dce81b7"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
