cask "halo@1" do
  version "1.0.1"
  sha256 "5a04db8ecf763b9cb309d85eb1d19eff4e8f14532226f965887316f2f3c0be41"

  url "https://github.com/Spador/Halo/releases/download/v#{version}/Halo-#{version}.zip"
  name "Halo 1"
  desc "Utility Dynamic Island for the MacBook notch (version 1 line)"
  homepage "https://github.com/Spador/Halo"

  conflicts_with cask: "spador/halo/halo"
  depends_on macos: :sonoma

  app "Halo.app"

  caveats <<~EOS
    This cask tracks the Halo version 1 line, which has zero network
    connections of any kind. The main "halo" cask tracks the newest release.
    Both install Halo.app, so only one can be installed at a time.

    Halo is a personal open-source build and is not notarized by Apple.
    If macOS blocks the first launch, clear the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/Halo.app
    or approve it under System Settings > Privacy & Security > Open Anyway.

    On first launch, grant Accessibility access to enable the
    volume/brightness HUD replacement.
  EOS
end
