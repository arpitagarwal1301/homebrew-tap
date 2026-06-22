cask "wardlume" do
  version "1.2.0"
  sha256 "16f0f08d558282812773570c320f58f95a1e14741680b5cc7f6e88182ebd87ff"

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
