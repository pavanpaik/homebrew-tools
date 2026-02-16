class InboxCli < Formula
  include Language::Python::Virtualenv

  desc "An agentic Downloads folder organizer for macOS"
  homepage "https://github.com/pavanpaik/inbox-cli"
  url "https://github.com/pavanpaik/inbox-cli/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "f98b937fd7acab531da7e536a981038b7dd74d42571cb61371d3f3bb4713d091"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Tame your Downloads", shell_output("#{bin}/inbox --help")
  end
end