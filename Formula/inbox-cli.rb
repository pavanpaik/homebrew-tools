class InboxCli < Formula
  desc "An agentic Downloads folder organizer for macOS"
  homepage "https://github.com/pavanpaik/inbox-cli"
  url "https://github.com/pavanpaik/inbox-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "232ed87d6436dab72bbe9a83b7d7311f5f75add444acfe7b66b52bebcbadc0e2"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Tame your Downloads", shell_output("#{bin}/inbox --help")
  end
end
