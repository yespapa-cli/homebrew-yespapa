class Yespapa < Formula
  desc "TOTP-authenticated command gateway for AI agents and dangerous shell commands"
  homepage "https://github.com/yespapa-cli/yespapa"
  url "https://registry.npmjs.org/yespapa/-/yespapa-0.1.2.tgz"
  sha256 "c394e52b137bfaeff1b6196931d43006a15d9df4b8c9d9dcb2cfedb59e5517e5"
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
