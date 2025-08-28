class Nocommit < Formula
  desc "Prevent accidental commits with forbidden phrases"
  homepage "https://github.com/waleedbaroudi/nocommit"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/waleedbaroudi/nocommit/releases/download/#{version}/nocommit_darwin_arm64.tar.gz"
      sha256 "d82985c8f99a5ed62bffe9e06d15c1fb1389966ae47d483fbc693f5a43624168"
    else
      url "https://github.com/waleedbaroudi/nocommit/releases/download/#{version}/nocommit_darwin_amd64.tar.gz"
      sha256 "1f0307716e8ca4ce58c89062916e6c02b3b105ac8b580c266b6ae84d1a3a2e01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/waleedbaroudi/nocommit/releases/download/#{version}/nocommit_linux_arm64.tar.gz"
      sha256 "f61b39ebdfcc7d8833e87827a147f9eb962a0416fdc6536687a06a17c454eb86"
    else
      url "https://github.com/waleedbaroudi/nocommit/releases/download/#{version}/nocommit_linux_amd64.tar.gz"
      sha256 "6b2afda07ad54921f0390393e79417e70f4cedac7ad6a150e8753f83d617798e"
    end
  end

  def install
    bin.install "nocommit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nocommit --version")
  end
end
