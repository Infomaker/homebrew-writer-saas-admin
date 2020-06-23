# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class WriterSaasAdmin < Formula
  desc "Writer saas admin Homebrew tap"
  homepage "https://bitbucket.org/infomaker/writer-saas-admin/"
  url "https://bitbucket.org/infomaker/writer-saas-admin/src/0.1.1/"
  version "0.1.1"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    system "go", "build", "-mod", "vendor", "-ldflags", "-w -s -X main.appVersion=0.1.1", "-o", "writer-saas-admin", "cmd/writer-saas-admin/main.go"
    bin.install "writer-tool"

    system "go", "writer-saas-admin", "completion"
    bash_completion.install "bash-completion/writer-saas-admin"
  end

  test do
    system "#{bin}/writer-tool"
  end
end