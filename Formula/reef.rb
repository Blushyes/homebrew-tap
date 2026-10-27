class Reef < Formula
  desc "Terminal workspace for browsing files, reviewing diffs, and committing changes"
  homepage "https://github.com/Blushyes/reef"
  version "0.44.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Blushyes/reef/releases/download/v0.44.1/reef-darwin-arm64.tar.gz"
      sha256 "85ceeac6e6d11a8eea02053b13e43a37ec187ec9f113f3ae7779a085e277ca35"
    end
    on_intel do
      url "https://github.com/Blushyes/reef/releases/download/v0.44.1/reef-darwin-x64.tar.gz"
      sha256 "b1c254678e09f7abbd55b669c3856784316c9b04c19025631e81592ae7a26e72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blushyes/reef/releases/download/v0.44.1/reef-linux-arm64.tar.gz"
      sha256 "b31069707e375d5bb046a58f1446d0f328f3a4fca752a8026432ee26de13a1af"
    end
    on_intel do
      url "https://github.com/Blushyes/reef/releases/download/v0.44.1/reef-linux-x64.tar.gz"
      sha256 "b369fa30512326ecb240cf33a920103fd718b5892d14306a991086b2054f5e0f"
    end
  end

  def install
    bin.install "reef"
    bin.install_symlink "reef" => "rf"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/reef --help 2>&1")
    assert_match "USAGE:", shell_output("#{bin}/rf --help 2>&1")
  end
end
