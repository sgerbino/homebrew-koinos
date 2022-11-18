class KoinosCli < Formula
  desc "A command line interface for the Koinos blockchain framework"
  homepage "https://koinos.io"
  url "https://github.com/koinos/koinos-cli/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "a7f33bf96aee27807ff1b0d0f2161ed50c9342ee1d259af6154eba2508e3b98f"
  license "MIT"
  head "https://github.com/koinos/koinos-cli.git"

  depends_on "go" => :build

  def install
    system "go build -o koinos-cli cmd/cli/main.go"
    bin.install "koinos-cli"
  end

  test do
    system "false"
  end
end
