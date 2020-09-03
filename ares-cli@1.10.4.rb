class AresCliAT1104 < Formula
    desc "The LG tv ares cli for macOs"
    homepage "https://github.com/Gemerz/homebrew-ares-cli"
    url "https://github.com/Gemerz/homebrew-ares-cli/releases/download/1.10.4/ares-webos-cli-mac-1.10.4.tgz"
    sha256 "11e5df6753e07bdfd53445704c820d14ca0119d184449929f84ac3fa0b13e7a3"
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
  