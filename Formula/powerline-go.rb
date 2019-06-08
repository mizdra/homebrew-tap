class PowerlineGo < Formula
  version '1.12.1'
  homepage 'https://github.com/justjanne/powerline-go'
  url "https://github.com/justjanne/powerline-go/releases/download/v#{version}/powerline-go-darwin-amd64"
  sha256 '6353bb30a4ac79a433e489eb112fb0db926c2ebeeed4ebe43adc018e58460928'
  head 'https://github.com/justjanne/powerline-go.git'

  head do
    url "https://github.com/justjanne/#{name}.git"
    depends_on 'go' => :build
  end

  def install
    if build.head?
      gobin = buildpath/"bin"
      ENV.update({
        'GOPATH' => buildpath,
        'PATH'   => "#{gobin}:#{ENV['PATH']}",
      })
      mkdir_p buildpath/'src/github.com/justjanne'
      ln_s buildpath, buildpath/"src/github.com/justjanne/#{name}"
      system 'go', 'get', '-d', '-v', './...'
      system 'go', 'build', "-o", "#{name}"
    end

    bin.install name
  end
end
