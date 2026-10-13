class Omnexx < Formula
  desc "Long-running coding agent: set a goal, walk away, come back to commits"
  homepage "https://omnexx.org"
  url "https://registry.npmjs.org/omnexx/-/omnexx-0.8.0.tgz"
  sha256 "f16736e2de70af65bc28f604447bbbcbe7c6245df47704be43739dd0f0f2cef6"
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
