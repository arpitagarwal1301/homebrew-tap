cask "wardlume" do
  version "1.8.0"
  sha256 "75ac28509c16e1205f65fb58924e7bf7059e59f20da0bff6587cb3825a5cefd4"

  url "https://github.com/arpitagarwal1301/wardlume/releases/download/v#{version}/Wardlume-#{version}.pkg"
  name "Wardlume"
  desc "Lock input behind a glass shield while your AI agents keep working"
  homepage "https://github.com/arpitagarwal1301/wardlume"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  pkg "Wardlume-#{version}.pkg"

  uninstall pkgutil: "com.agarwal.wardlume.Wardlume"

  zap trash: [
    "~/Library/Application Support/Wardlume",
    "~/Library/Containers/com.agarwal.wardlume.Wardlume",
  ]
end
