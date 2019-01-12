class GitPluginChoosable < Formula
    desc "Git plugin that allows you to select targets from the branch list"
    homepage "https://github.com/ponday-dev/git-plugin-choosable"
    version "v0.1.0"

    if Hardware::CPU.is_64_bit?
        url "https://github.com/ponday-dev/git-plugin-choosable/releases/download/v0.1.0/choosable_darwin_amd64.zip"
        sha256 "52d95b6d340b479a503f1e57a7baeadfbe20b845d39a1fe3f533aa74276d1a0b"
    else
        url "https://github.com/ponday-dev/git-plugin-choosable/releases/download/v0.1.0/choosable_darwin_386.zip"
        sha256 "5be9ce194612f259e978796ce3121a3f422f91862faf9dbf19558d27e31751fe"
    end

    def install
        bin.install 'git-switch'
        bin.install 'git-remove'
    end

    test do
        system "true"
    end
end
  