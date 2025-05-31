class Ovl < Formula
  desc "OpenVoxel Launcher - Command-line interface for OpenVoxel Studios"
  homepage "https://github.com/OpenVoxelStudios/CLI"
  url "https://github.com/OpenVoxelStudios/CLI/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "0414840eb4a9d179f79d8bb0ec4d686f9dc3beee4a9a13ddc8e34d8c6005cfc1"
  license "MIT"
  head "https://github.com/OpenVoxelStudios/CLI.git", branch: "main"

  depends_on "rust" => :build
  depends_on "cmake" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/ovl --version")
  end
end
