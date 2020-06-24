# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WriterSaasAdmin < Formula
  desc "Writer saas admin Homebrew tap"
  homepage "https://bitbucket.org/infomaker/writer-saas-admin/"
  version "0.1.13"
  url "https://writer-saas-admin.s3-eu-west-1.amazonaws.com/0.1.13.tar.gz"
  sha256 "27de8d9e77730af155750af8381e54fa37c8d45e066dea37ec9bcbca283c4a7a"

  def install

    bin.install "writer-saas-admin"
    bash_completion.install "bash-completion/writer-saas-admin"

  end

  test do
    system "#{bin}/writer-saas-admin"
  end
end