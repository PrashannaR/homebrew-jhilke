class Jhilke < Formula
  desc "Jhilke macOS app for controlling monitor brightness"
  homepage "https://github.com/PrashannaR/Jhilke-macOS"
  url "https://github.com/PrashannaR/Jhilke-macOS/releases/download/v1.0.0/Jhilke.zip"
  sha256 "5ef33c4d02fdcc50f9d8984ede955ae3c6ef93ba72b33c70a539fc675c407e43"
  license "MIT"

  def install
    prefix.install "Jhilke.app"

  end

  def caveats
    <<~EOS
      Jhilke has been installed in:
        #{opt_prefix}/Jhilke.app

      To use it, you may want to move it to your /Applications folder:
        mv #{opt_prefix}/Jhilke.app /Applications
    EOS
  end

  test do
    system "open", prefix/"Jhilke.app"  
  end
end
