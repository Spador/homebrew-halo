cask "halo" do
  version "1.0.0"
  sha256 "0e7c38b32e5be412c62200eed83fee0598390cbd1b899a98687f84ca2012b836"

  url "https://github.com/Spador/Halo/releases/download/v#{version}/Halo-#{version}.zip"
  name "Halo"
  desc "Utility Dynamic Island for the MacBook notch"
  homepage "https://github.com/Spador/Halo"

  depends_on macos: ">= :sonoma"

  app "Halo.app"

  caveats <<~EOS
    Halo is a personal open-source build and is not notarized by Apple.
    If macOS blocks the first launch, install with:
      brew install --cask --no-quarantine spador/halo/halo
    or approve it under System Settings > Privacy & Security > Open Anyway.

    On first launch, grant Accessibility access to enable the
    volume/brightness HUD replacement.
  EOS
end
