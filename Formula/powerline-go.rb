class PowerlineGo < Formula
  version '1.12.1'
  homepage 'https://github.com/justjanne/powerline-go'
  url "https://github.com/justjanne/powerline-go/releases/download/v1.12.1/powerline-go-darwin-amd64"
  sha256 '6353bb30a4ac79a433e489eb112fb0db926c2ebeeed4ebe43adc018e58460928'
  head 'https://github.com/justjanne/powerline-go.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'powerline-go'
  end
end
