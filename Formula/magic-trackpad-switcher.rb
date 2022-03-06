class MagicTrackpadSwitcher < Formula
  desc "The tool to switch Magic Trackpad connections between multiple Mac devices"
  homepage "https://github.com/mizdra/magic-trackpad-switcher"
  url "https://github.com/mizdra/magic-trackpad-switcher.git", tag: "v0.0.2", revision: "092e7024b6eaf9895c51d3b2d55321684d576179"
  head "https://github.com/mizdra/magic-trackpad-switcher.git", branch: "master"

  depends_on "blueutil"

  def install
    bin.install "magic-trackpad-switcher"
  end

  plist_options manual: "magic-trackpad-switcher"

  service do
    run [opt_bin/"magic-trackpad-switcher"]
    run_type :interval
    interval 2
    keep_alive true
  end

  test do
    system bin/"magic-trackpad-switcher"
  end
end
