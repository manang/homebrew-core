class Libparc < Formula
  desc "Libparc library"
  homepage "https://github.com/FDio/cicn/blob/cframework/master/libparc/README.md"
  url "https://github.com/FDio/cicn", :using=>:git, :branch=>"cframework/master"
#@archive/cframework/master.zip"
  version "1.0-65~g7944543~b3"
  
  depends_on "cmake" => :build
  depends_on "openssl@1.1"
  depends_on "libevent"

  def install
    system "cmake", "libparc", *std_cmake_args
    system "make", "install", "-j"
  end

  test do
    system "false"
  end

  bottle do
    sha256 "d915407ef1a9a22321a8fc4e8a4186b305d901b31858136cfa4d7f885c2bb0b9" => :mojave
  end

end
