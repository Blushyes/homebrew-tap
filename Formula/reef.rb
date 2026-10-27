class Reef < Formula
  desc "Terminal workspace for browsing files, reviewing diffs, and committing changes"
  homepage "https://github.com/Blushyes/reef"
  version "0.45.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Blushyes/reef/releases/download/v0.45.0/reef-darwin-arm64.tar.gz"
      sha256 "d3f92329e6591fdd296f5fbaebd1ce3f7ba32ca81067c1739ff680d0deea72d9"
    end
    on_intel do
      url "https://github.com/Blushyes/reef/releases/download/v0.45.0/reef-darwin-x64.tar.gz"
      sha256 "513ff0f0c22aab3fdd84ca52b402e027376e6e8fdef679e00404576d5d112c6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blushyes/reef/releases/download/v0.45.0/reef-linux-arm64.tar.gz"
      sha256 "554513d0766cbfb44967ca4e1b1c9be9a1b3c81bae66d1078edcbc25d7809e34"
    end
    on_intel do
      url "https://github.com/Blushyes/reef/releases/download/v0.45.0/reef-linux-x64.tar.gz"
      sha256 "44f99cbef4782d61b15d636b321655cdc3dc2cbff9f8068add6a894daf75cade"
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
