class Apm < Formula
  include Language::Python::Virtualenv

  desc "Centralized API provider management for AI coding agents"
  homepage "https://github.com/jaxtonzhc/agent-provider-manager"
  url "https://github.com/jaxtonzhc/agent-provider-manager/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "1c33f66806b7351056d6dff4e116ee66369825dc3aba12be350911f3b183cc1b"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "apm #{version}", shell_output("#{bin}/apm -V")
  end
end
