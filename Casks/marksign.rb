cask "marksign" do
  version "0.1.1"
  sha256 "6873d01dd666c6a887cab6831f8cf995bf10a774f21f39ca437403c1012a9872"

  url "https://github.com/faberludens-pro/marksign/releases/download/v#{version}/MarkSign-#{version}.dmg"
  name "MarkSign"
  desc "Convert documents to Markdown, locally"
  homepage "https://faberludens-pro.github.io/marksign/"

  app "MarkSign.app"

  zap trash: [
    "~/.marksign",
  ]
end
