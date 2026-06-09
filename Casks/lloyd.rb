cask "lloyd" do
  version "0.1.0"
  sha256 "193b9de6962e363ff9d5c54f2ad56ed038f7fcf83af828e6ae297bfe0238379e"

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
