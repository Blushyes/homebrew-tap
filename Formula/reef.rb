class Reef < Formula
  desc "Terminal workspace for browsing files, reviewing diffs, and committing changes"
  homepage "https://github.com/Blushyes/reef"
  version "0.45.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Blushyes/reef/releases/download/v0.45.2/reef-darwin-arm64.tar.gz"
      sha256 "2ef1c821fb87b71192fab22d5b6a65126a0825dda627de1999d2b8a1206d96e4"
    end
    on_intel do
      url "https://github.com/Blushyes/reef/releases/download/v0.45.2/reef-darwin-x64.tar.gz"
      sha256 "8889baf36686ae6b1a8a78c033f0ba76b759d98bb00a898f2cdd60a64bd9ead5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blushyes/reef/releases/download/v0.45.2/reef-linux-arm64.tar.gz"
      sha256 "e2778a93f3b2077ffe0819879996de00c11313ba43db8ce5a65119a69f75884a"
    end
    on_intel do
      url "https://github.com/Blushyes/reef/releases/download/v0.45.2/reef-linux-x64.tar.gz"
      sha256 "9ecc104aecff4b8cc67b5c5670fa46d6e0b89131bef66079e956456ab481a4d2"
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
