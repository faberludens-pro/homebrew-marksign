cask "marksign" do
  version "0.1.2"
  sha256 "ee0f7f6acbf5ec3edad887bd0663d40024fc3426fcc2353663d9e0734df607cb"

  url "https://github.com/faberludens-pro/marksign/releases/download/v#{version}/MarkSign-#{version}.dmg"
  name "MarkSign"
  desc "Convert documents to Markdown, locally"
  homepage "https://faberludens-pro.github.io/marksign/"

  app "MarkSign.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/MarkSign.app"],
                   sudo: false
  end

  zap trash: [
    "~/.marksign",
  ]
end
