class KoinosChain < Formula
  desc "The chain microservice is responsible for the application of blocks, running of smart contracts, and applying transactions."
  homepage "https://koinos.io"
  url "https://github.com/koinos/koinos-chain/archive/refs/tags/v1.0.1.tar.gz"
  version "1.0.1"
  sha256 "95cdb17919997f4bcb16748a25e9e8106a0ab7184f44ac4a072ec9b833767ddf"
  license "MIT"
  head "https://github.com/koinos/koinos-chain.git"

  depends_on "cmake" => :build

  def install
    ohai "Configuring Koinos Chain project"
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    ohai "Building Koinos Chain"
    system "make", "install"
  end

  test do
    system "false"
  end
end
