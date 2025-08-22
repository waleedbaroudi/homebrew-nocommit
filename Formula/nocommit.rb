class Nocommit < Formula
  desc "Prevent accidental commits with forbidden phrases"
  homepage "https://github.com/waleedbaroudi/nocommit"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/waleedbaroudi/nocommit/releases/download/v0.1.1/nocommit_darwin_arm64.tar.gz"
      sha256 "4d53cd18f813bfd498e71aeca22bc770c4e2d1192518c297a41e27ce32736f65"
    else
      url "https://github.com/waleedbaroudi/nocommit/releases/download/v0.1.1/nocommit_darwin_amd64.tar.gz"
      sha256 "7a4228bc9ce815f5b152d9921e2bceddca9e43e44d7642b4ba3d9a0f9896a724"
    end
  end

  def install
    bin.install "nocommit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nocommit --version")
  end
end
