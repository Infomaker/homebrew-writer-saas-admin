# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WriterSaasAdmin < Formula
  desc "Writer saas admin Homebrew tap"
  homepage "https://bitbucket.org/infomaker/writer-saas-admin/"
  version "1.2.1"
  url "https://writer-saas-admin.s3-eu-west-1.amazonaws.com/1.2.1.tar.gz"
  sha256 "c03b8083dd2bd2548c40223dc222690016ba5a0800180f5e5446c1a6e29d403d"

  def install

    bin.install "writer-saas-admin"
    bash_completion.install "bash-completion/writer-saas-admin"

  end

  test do
    system "#{bin}/writer-saas-admin"
  end
end