class Ovl < Formula
  desc "OpenVoxel Launcher - Command-line interface for OpenVoxel Studios"
  homepage "https://github.com/OpenVoxelStudios/CLI"
  url "https://github.com/OpenVoxelStudios/CLI/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a96c01a0ac5501f3ebaaa991c2c461532d22e1354d7f89af1ee45c583d8f3207"
  license "MIT"
  head "https://github.com/OpenVoxelStudios/CLI.git", branch: "main"

  depends_on "rust" => :build
  depends_on "cmake" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/ovl --version")
  end
end
