cask "hoverask" do
  version "1.2.0"
  sha256 "b7652d8b1599d7bff4e20026c1291c4676d554da83fba947d56c45cfdb178c41"

  url "https://github.com/arpitagarwal1301/hoverask/releases/download/v#{version}/HoverAsk-v#{version}-macos.pkg"
  name "HoverAsk"
  desc "Native macOS floating voice assistant for CLI, local, and BYOK AI providers"
  homepage "https://github.com/arpitagarwal1301/hoverask"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  pkg "HoverAsk-v#{version}-macos.pkg"

  uninstall pkgutil: "com.arpitagarwal.hoverask"

  zap trash: [
    "~/Library/Application Support/HoverAsk",
    "~/Library/Caches/com.arpitagarwal.hoverask",
    "~/Library/Preferences/com.arpitagarwal.hoverask.plist",
  ]
end
