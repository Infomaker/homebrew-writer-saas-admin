# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WriterSaasAdmin < Formula
  desc "Writer saas admin Homebrew tap"
  homepage "https://bitbucket.org/infomaker/writer-saas-admin/"
  version "1.2.0"
  url "https://writer-saas-admin.s3-eu-west-1.amazonaws.com/1.2.0.tar.gz"
  sha256 "63eb99dae04ed56659babf5dcfd4329e144b8322d5100caf66e813e6b79ac246"

  def install

    bin.install "writer-saas-admin"
    bash_completion.install "bash-completion/writer-saas-admin"

  end

  test do
    system "#{bin}/writer-saas-admin"
  end
end