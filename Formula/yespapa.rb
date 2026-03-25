class Yespapa < Formula
  desc "TOTP-authenticated command gateway for AI agents and dangerous shell commands"
  homepage "https://github.com/yespapa-cli/yespapa"
  url "https://registry.npmjs.org/yespapa/-/yespapa-0.1.3.tgz"
  sha256 "bf64399890e9d5b7c760676edd0ef313796353b2248d6cf7d1f41d4520ed8190"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      To get started, run:
        yespapa init

      This will:
        1. Set a master password
        2. Generate a TOTP seed and display a QR code
        3. Scan the QR with your authenticator app (Google Authenticator, Authy, 1Password)
        4. Install shell interceptors for dangerous commands
        5. Start the YesPaPa daemon

      After init, open a new terminal to activate command interception.

      Documentation: https://github.com/yespapa-cli/yespapa
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yespapa --version")
  end
end
