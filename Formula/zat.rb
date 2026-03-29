class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.0/zat-aarch64-darwin.tar.gz"
      sha256 "e3650e047289620b2c102310936e2e1fd452cfdf50499b6739c9ad6238811218"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.0/zat-x86_64-darwin.tar.gz"
      sha256 "f1271a4f88026a776abdfb510df2e91a44d6fd231abc995a2087ab9e7c97dd88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.0/zat-x86_64-linux.tar.gz"
      sha256 "902217dd231d615ec4d5a7007c78ae5ceb523c6ca43d23380a4dfacc864374dd"
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
