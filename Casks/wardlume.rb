cask "wardlume" do
  version "1.9.0"
  sha256 "1cee8953f6ce7a97ef7cff205463253075f0f2c7c6d9af2382d22196f6d26b40"

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
