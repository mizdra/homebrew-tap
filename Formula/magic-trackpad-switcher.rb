class MagicTrackpadSwitcher < Formula
  desc "The tool to switch Magic Trackpad connections between multiple Mac devices"
  homepage "https://github.com/mizdra/magic-trackpad-switcher"
  url "https://github.com/mizdra/magic-trackpad-switcher/releases/download/v0.1.1/magic-trackpad-switcher"
  sha256 "1697ead1b2cdc63adcb6da4f69219089ee5cc93f42b39d6194deeb885b042d6e"

  depends_on "blueutil"

  def install
    bin.install "magic-trackpad-switcher"
  end

  service do
    run [opt_bin/"magic-trackpad-switcher"]
    keep_alive true
    run_type :interval
    interval 2
    log_path "#{HOMEBREW_PREFIX}/var/log/magic-trackpad-switcher.log"
    error_log_path "#{HOMEBREW_PREFIX}/var/log/magic-trackpad-switcher.error.log"
    environment_variables PATH: std_service_path_env
  end

  test do
    system bin/"magic-trackpad-switcher"
  end
end
