class MagicTrackpadSwitcher < Formula
  desc "The tool to switch Magic Trackpad connections between multiple Mac devices"
  homepage "https://github.com/mizdra/magic-trackpad-switcher"
  url "https://github.com/mizdra/magic-trackpad-switcher.git", tag: "v0.0.3", revision: "1592875d18acccf4274c77fa9ad263d1e7dbd137"
  head "https://github.com/mizdra/magic-trackpad-switcher.git", branch: "main"

  depends_on "blueutil"

  def install
    bin.install "magic-trackpad-switcher"
  end

  service do
    run [opt_bin/"magic-trackpad-switcher"]
    keep_alive true
    log_path "#{HOMEBREW_PREFIX}/var/log/beanstalkd.log"
    error_log_path "#{HOMEBREW_PREFIX}/var/log/beanstalkd.error.log"
  end

  test do
    system bin/"magic-trackpad-switcher"
  end
end
