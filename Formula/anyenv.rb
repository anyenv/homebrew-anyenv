class Anyenv < Formula
  desc "All in one for **env"
  homepage "https://anyenv.github.io/"
  url "https://github.com/anyenv/anyenv/archive/v1.0.0.tar.gz"
  sha256 "f922f3d6f319dcbf36a16f392c9d48c2f6338d0f0cc087ca965a8f1bc12a83a4"

  def install
    prefix.install %w[bin completions libexec]
  end

  def caveats
    <<~EOS
      Please add the line below to your profile of shell:
      eval "$(anyenv init -)"
      You can initialize install manifests directory by:
      anyenv install --init [git-url] [git-ref]
    EOS
  end

  test do
    shell_output("eval \"$(#{bin}/anyenv init -)\" && anyenv --version")
  end
end
