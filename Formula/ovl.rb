class Ovl < Formula
  desc "OpenVoxel Launcher - Command-line interface for OpenVoxel Studios"
  homepage "https://github.com/OpenVoxelStudios/CLI"
  url "https://github.com/OpenVoxelStudios/CLI/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "dfb406f56a2e15c31fc08e67925ae99602a980cb86a3450c76bf64c50118a4df"
  license "MIT"
  head "https://github.com/OpenVoxelStudios/CLI.git", branch: "main"

  depends_on "rust" => :build
  depends_on "cmake" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/ovl --version")
  end
end
