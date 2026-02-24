class Cruxd < Formula
  desc "The Crucible daemon."
  homepage "https://github.com/cruciblehq/cruxd"
  version "0.1.5"
  url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.5/cruxd-linux-amd64.tar.gz"
  sha256 "3d582069b21051ef6d1e067301637bf5bf7afb21c4a158f3100a033c951eac63"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/cruciblehq/cruxd/releases/download/v0.1.5/cruxd-linux-arm64.tar.gz"
      sha256 "09dae59d43bd0eee0a7200b473bd3a1ab0b950da27d4043611e41149a4cb40b4"
    end
  end

  def install
    bin.install "cruxd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cruxd version")
  end
end
