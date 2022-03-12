class MagicTrackpadSwitcher < Formula
  desc "The tool to switch Magic Trackpad connections between multiple Mac devices"
  homepage "https://github.com/mizdra/magic-trackpad-switcher"
  url "https://github.com/mizdra/magic-trackpad-switcher/releases/download/v0.1.4/magic-trackpad-switcher"
  sha256 "c651b6ad9f16f475e3b42a81516de124c934ae49038f1490f6edd3870cbc0f41"

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
