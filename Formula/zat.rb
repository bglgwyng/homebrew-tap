class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.5/zat-aarch64-darwin.tar.gz"
      sha256 "43943f51b12a20f77e705481e5a7565099a62191d1d7e819b2758933ad72a8d0"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.5/zat-x86_64-darwin.tar.gz"
      sha256 "d1b34348b816afa7895170ac9a65a70e7804da22a6f5e47e8e80bd9ccc7b6683"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.5/zat-x86_64-linux.tar.gz"
      sha256 "7e3e548704b2516a327b751ff12697863eb65e2345bee445a414dce82d13bab0"
    end
  end

  def install
    bin.install "zat"
  end

  test do
    (testpath/"test.ts").write("export function hello(): string { return 'hi'; }\n")
    assert_match "function hello", shell_output("#{bin}/zat #{testpath}/test.ts")
  end
end
