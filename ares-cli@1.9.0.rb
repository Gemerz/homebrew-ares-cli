class AresCliAT190 < Formula
    desc "The LG tv ares cli for macOs"
    homepage "https://github.com/Gemerz/homebrew-ares-cli"
    url "https://github.com/Gemerz/homebrew-ares-cli/releases/download/1.9.0/ares-webos-cli-mac-1.9.0.tgz"
    sha256 "9bb5d70e7010b814228e1e6dbcc1ab16252814ab7fb42c861083007ecf465635"
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
  