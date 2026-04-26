class VsRename < Formula
  include Language::Python::Virtualenv

  desc "python script that lets you mass-edit file names with vscode"
  homepage "https://github.com/logonoff/vs-rename"
  url "https://github.com/logonoff/vs-rename/releases/download/0.1.2/vs_rename-0.1.2.tar.gz"
  sha256 "4166a7f93388eac7d3ac7f187154b5df7de3ce8fe3f25f1c4f08eb2bcac213b6"
  license "GPL-2.0-only"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage:", shell_output("#{bin}/ren-vs --help")
  end

  def caveats
    <<~EOS
      #{name} is no longer actively maintained and might not work
    EOS
  end
end
