 class AresCli < Formula
    desc "The LG tv ares cli for macOs"
    homepage "https://github.com/Gemerz/homebrew-ares-cli"
    url "https://github.com/Gemerz/homebrew-ares-cli/releases/download/1.10.2/ares-webos-cli-mac-1.10.2.tgz"
    sha256 "d3a91150e0d3dd18c2044c82eb368f47b3cd964b1999fc27ad10e5efc6414a6a"
    bottle :unneeded
    depends_on "node" => :build
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      system bin/"ares-shell"
      # system "false"
    end
  end
  