class AresCliAT1111 < Formula
    desc "The LG tv ares cli for macOs"
    homepage "https://github.com/Gemerz/homebrew-ares-cli"
    url "https://github.com/Gemerz/homebrew-ares-cli/releases/download/1.11.1/ares-webos-cli-mac-1.11.1.tgz"
    sha256 "9ea1b103b24e5c05bc74c3d72a4d9b0b11eff62dcef70c992de349e52a3d305e"
    bottle :unneeded
    keg_only :versioned_formula
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
  