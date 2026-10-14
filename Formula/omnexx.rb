class Omnexx < Formula
  desc "Long-running coding agent: set a goal, walk away, come back to commits"
  homepage "https://omnexx.org"
  url "https://registry.npmjs.org/omnexx/-/omnexx-0.10.0.tgz"
  sha256 "b55570104b3fbe433396777b70023cfa59e552f90b9b316ffb9c2c4e98fe0b8d"
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
