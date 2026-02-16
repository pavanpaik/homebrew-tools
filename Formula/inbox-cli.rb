class InboxCli < Formula
  desc "An agentic Downloads folder organizer for macOS"
  homepage "https://github.com/pavanpaik/inbox-cli"
  url "https://github.com/pavanpaik/inbox-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "fc62e200e621bb477d898345e7c09dc406525ed37f1013c4668853755b278372"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "typer[all]", "rich", "watchdog"
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "Tame your Downloads", shell_output("#{bin}/inbox --help")
  end
end