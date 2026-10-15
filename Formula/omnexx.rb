class Omnexx < Formula
  desc "Long-running coding agent: set a goal, walk away, come back to commits"
  homepage "https://omnexx.org"
  url "https://registry.npmjs.org/omnexx/-/omnexx-0.15.0.tgz"
  sha256 "f36a573595f579c46ebd2f2e2a4515785c515b0b8b250d3c0fe346d2f8f2c9ff"
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
