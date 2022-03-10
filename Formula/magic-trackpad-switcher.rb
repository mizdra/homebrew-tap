class MagicTrackpadSwitcher < Formula
  desc "The tool to switch Magic Trackpad connections between multiple Mac devices"
  homepage "https://github.com/mizdra/magic-trackpad-switcher"
  url "https://github.com/mizdra/magic-trackpad-switcher/releases/download/v0.1.0/magic-trackpad-switcher"
  sha256 "c2dc6a1af3065db1cc22507ade38e7ce3405bbc6eb42abc6888e9a517faff898"

  depends_on "blueutil"

  def install
    bin.install "magic-trackpad-switcher"
  end

  service do
    run [opt_bin/"magic-trackpad-switcher"]
    keep_alive true
    log_path "#{HOMEBREW_PREFIX}/var/log/magic-trackpad-switcher.log"
    error_log_path "#{HOMEBREW_PREFIX}/var/log/magic-trackpad-switcher.error.log"
  end

  test do
    system bin/"magic-trackpad-switcher"
  end
end
