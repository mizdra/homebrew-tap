class PowerlineGo < Formula
  name = 'powerline-go'
  version '1.12.1'
  homepage 'https://github.com/justjanne/powerline-go'
  url "https://github.com/justjanne/powerline-go/releases/download/v#{version}/#{name}-darwin-amd64"
  sha256 '6353bb30a4ac79a433e489eb112fb0db926c2ebeeed4ebe43adc018e58460928'

  def install
    mv "#{name}-darwin-amd64", name
    bin.install name
  end
end
