class ZshAutoSwitchVirtualenv < Formula
  name = 'zsh-autoswitch-virtualenv'
  version '1.15.0'
  homepage 'https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv'
  url "https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv/archive/#{version}.zip"
  sha256 '2bbadabc60a107e9cc506e7c93c698927e2c4acad08d0b5d7ea629d95437358d'

  def install
    bin.install 'autoswitch_virtualenv.plugin.zsh'
  end
end
