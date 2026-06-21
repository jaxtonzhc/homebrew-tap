class Apm < Formula
  include Language::Python::Virtualenv

  desc "Centralized API provider management for AI coding agents"
  homepage "https://github.com/jaxtonzhc/agent-provider-manager"
  url "https://github.com/jaxtonzhc/agent-provider-manager/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6fa7ab11595083189bebee4191aa7404081add9bb7adb62a95c0c4b9b850a897"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "apm #{version}", shell_output("#{bin}/apm -V")
  end
end
