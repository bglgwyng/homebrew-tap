class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.4/zat-aarch64-darwin.tar.gz"
      sha256 "1238b4f9a883ad6ec373076ed587b05becb71761c3e5e12ebd3f6cc4ac7ba8b4"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.4/zat-x86_64-darwin.tar.gz"
      sha256 "33edd077141048d4d40845814659f4fc9f45d285b27fd2b9d97ec5538b84441c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.4/zat-x86_64-linux.tar.gz"
      sha256 "813fd487c8c274d8e92886203424ea18b40e536a9e8a3d3977fe2eaa094af4f6"
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
