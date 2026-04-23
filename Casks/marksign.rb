cask "marksign" do
  version "0.1.1"
  sha256 "1a48da139fc8f766c8541d42cf51009a829c20116ac345c5f27e5618d8da4a0e"

  url "https://github.com/faberludens-pro/marksign/releases/download/v#{version}/MarkSign-#{version}.dmg"
  name "MarkSign"
  desc "Convert documents to Markdown, locally"
  homepage "https://faberludens-pro.github.io/marksign/"

  app "MarkSign.app"

  zap trash: [
    "~/.marksign",
  ]
end
