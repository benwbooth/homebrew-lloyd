cask "lloyd" do
  version "0.1.1"
  sha256 "906649ec252705454203940b7fb4b18847131f154dfa96e4e3730848de6a3a5b"

  url "https://github.com/benwbooth/lloyd/releases/download/v#{version}/Lloyd.dmg"
  name "Lloyd"
  desc "Bartender-style menu-bar manager for notched Macs"
  homepage "https://github.com/benwbooth/lloyd"

  depends_on macos: :sonoma

  app "Lloyd.app"

  # App is signed but not notarized, so Gatekeeper quarantines it on every
  # install/upgrade. Strip the quarantine attribute so it launches without the
  # "Apple could not verify ... is free of malware" prompt.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Lloyd.app"]
  end

  caveats <<~EOS
    Lloyd needs two permissions, prompted on first use:
      Screen Recording - to capture the hidden menu-bar icons.
      Accessibility    - to move menu-bar items and forward clicks.
    Enable both under System Settings > Privacy & Security, then relaunch.
  EOS
end
