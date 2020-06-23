# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WriterSaasAdmin < Formula
  desc "Writer saas admin Homebrew tap"
  homepage "https://bitbucket.org/infomaker/writer-saas-admin/"
  version "0.1.4"
  url "https://writer-saas-admin.s3-eu-west-1.amazonaws.com/0.1.4.zip"
  sha256 "eed875d11532e4a4c70c1b8f9ec9f19d06d4880bad4cddb3d50a16f087b63505"

  def install

    bin.install "writer-saas-admin"
    bash_completion.install "bash-completion/writer-saas-admin"

  end

  test do
    system "#{bin}/writer-saas-admin"
  end
end