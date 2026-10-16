class Omnexx < Formula
  desc "Long-running coding agent: set a goal, walk away, come back to commits"
  homepage "https://omnexx.org"
  url "https://registry.npmjs.org/omnexx/-/omnexx-0.18.0.tgz"
  sha256 "6da73ddcde1f6afb78bb97521e8ee42142442ce72867ab6f3d6e77837f7b4ffb"
  license "MIT"

  depends_on "node"
  depends_on "ripgrep"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnexx --version")
  end
end
