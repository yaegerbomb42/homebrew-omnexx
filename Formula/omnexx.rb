class Omnexx < Formula
  desc "Long-running coding agent: set a goal, walk away, come back to commits"
  homepage "https://omnexx.org"
  url "https://registry.npmjs.org/omnexx/-/omnexx-0.6.0.tgz"
  sha256 "3bd86c6b7779148f5d8ce72143a0b630d7264fa87df13055a43aaad5286f849c"
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
