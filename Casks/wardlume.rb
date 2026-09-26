cask "wardlume" do
  version "1.7.1"
  sha256 "f3dfa35a773cab076b663dfd55c35791cb3842d009b8de32e1537b6be1567831"

  url "https://github.com/arpitagarwal1301/wardlume-screen-lock/releases/download/v#{version}/Wardlume-#{version}.pkg"
  name "Wardlume"
  desc "Lock input behind a glass shield while your AI agents keep working"
  homepage "https://github.com/arpitagarwal1301/wardlume-screen-lock"

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
