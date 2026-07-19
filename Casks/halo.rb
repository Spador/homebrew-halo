cask "halo" do
  version "2.3.0"
  sha256 "338f494840c7dbeaac5ae80a9e86e4bc648503f62bd880a3d3323f00581dfe4e"

  url "https://github.com/Spador/Halo/releases/download/v#{version}/Halo-#{version}.zip"
  name "Halo"
  desc "Utility Dynamic Island for the MacBook notch"
  homepage "https://github.com/Spador/Halo"

  conflicts_with cask: "spador/halo/halo@1"
  depends_on macos: :sonoma

  app "Halo.app"

  caveats <<~EOS
    Halo is a personal open-source build and is not notarized by Apple.
    If macOS blocks the first launch, clear the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/Halo.app
    or approve it under System Settings > Privacy & Security > Open Anyway.

    On first launch, grant Accessibility access to enable the
    volume/brightness HUD replacement.
  EOS
end
