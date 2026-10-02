cask "wardlume" do
  version "1.7.4"
  sha256 "7e07a0f3852aca8d30690ced7cd9b39c93cfa518211057a468860d04a5bfd007"

  url "https://github.com/arpitagarwal1301/wardlume/releases/download/v#{version}/Wardlume-#{version}.pkg"
  name "Wardlume"
  desc "Lock input behind a glass shield while your AI agents keep working"
  homepage "https://github.com/arpitagarwal1301/wardlume"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Since 1.7.4 Wardlume updates itself (Sparkle); brew upgrade leaves it alone
  # unless run with --greedy.
  auto_updates true

  depends_on macos: :tahoe
  depends_on arch: :arm64

  pkg "Wardlume-#{version}.pkg"

  uninstall pkgutil: "com.agarwal.wardlume.Wardlume"

  zap trash: [
    "~/Library/Application Support/Wardlume",
    "~/Library/Containers/com.agarwal.wardlume.Wardlume",
  ]
end
