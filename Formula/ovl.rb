class Ovl < Formula
  desc "OpenVoxel Launcher - Command-line interface for OpenVoxel Studios"
  homepage "https://github.com/OpenVoxelStudios/CLI"
  url "https://github.com/OpenVoxelStudios/CLI/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "98ed5631bac567109609678018bd7d7126321ef20307273f7bfbb0f94617513f"
  license "MIT"
  head "https://github.com/OpenVoxelStudios/CLI.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/ovl --version")
  end
end
