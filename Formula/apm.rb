class Apm < Formula
  include Language::Python::Virtualenv

  desc "Centralized API provider management for AI coding agents"
  homepage "https://github.com/jaxtonzhc/agent-provider-manager"
  url "https://github.com/jaxtonzhc/agent-provider-manager/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "1534aaa8ce1e3e2d77aacbe141f069dbf5ac31ecfd1fb128cd100cd71dc5ad1f"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "apm #{version}", shell_output("#{bin}/apm -V")
  end
end
