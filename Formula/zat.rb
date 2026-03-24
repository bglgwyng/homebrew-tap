class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.6/zat-aarch64-darwin.tar.gz"
      sha256 "fa43553924dd011c925c221040384a7307a8757d161d0b34fa5f1d1f66866a0d"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.6/zat-x86_64-darwin.tar.gz"
      sha256 "391895ce464cc5acfedff914c5fa8872288901a272fa00cf97c4e280e8e956f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.6/zat-x86_64-linux.tar.gz"
      sha256 "920c2f3a4ccfda66ef446deea008a586cb5fbefacb5c63ac2382d91892a53fdd"
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
