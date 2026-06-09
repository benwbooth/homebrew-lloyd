cask "lloyd" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/benwbooth/lloyd/releases/download/v#{version}/Lloyd.dmg"
  name "Lloyd"
  desc "Bartender-style menu-bar manager for notched Macs"
  homepage "https://github.com/benwbooth/lloyd"

  depends_on macos: :sonoma

  app "Lloyd.app"

  caveats <<~EOS
    Lloyd is signed but not notarized. On first launch, right-click the app
    and choose Open (or allow it in System Settings > Privacy & Security).

    It needs two permissions, prompted on first use:
      Screen Recording - to capture the hidden menu-bar icons.
      Accessibility    - to move menu-bar items and forward clicks.
    Enable both under System Settings > Privacy & Security, then relaunch.
  EOS
end
