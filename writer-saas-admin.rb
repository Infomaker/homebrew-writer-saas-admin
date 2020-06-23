# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WriterSaasAdmin < Formula
  desc "Writer saas admin Homebrew tap"
  homepage "https://bitbucket.org/infomaker/writer-saas-admin/"
  version "0.1.5"
  url "https://writer-saas-admin.s3-eu-west-1.amazonaws.com/0.1.5.zip"
  sha256 "dc810361bc5936fe16485c40eeee92ba8dfed6f5067b49d06b56550b31258d21"

  def install

    bin.install "writer-saas-admin"
    bash_completion.install "bash-completion/writer-saas-admin"

  end

  test do
    system "#{bin}/writer-saas-admin"
  end
end