cask "birdfont" do
  on_mojave :or_older do
    version "4.17.0"
    sha256 "74c778e3b7598a66b9ddb11b189ba6a21d68263fb0499a965dcedd0ac987b051"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.12.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  end
  on_catalina :or_newer do
    version "5.0.21"
    sha256 "efb5786bae6dac4afce5e4d8f116239d48c78a1a0ad1c86fe24c7c306c8596d7"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.15.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name "BirdFont"
  desc "Font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :sierra"

  app "BirdFontNonCommercial.app"

  zap trash: [
    "~/Library/Application Scripts/org.birdfont.birdfont",
    "~/Library/Containers/org.birdfont.birdfont",
  ]
end
