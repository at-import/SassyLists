require './lib/SassyLists'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = SassyLists::VERSION
  s.date = SassyLists::DATE

  # Gem Details
  s.name = "SassyLists"
  s.rubyforge_project = "SassyLists"
  s.description = %q{Advanced Sass list functions}
  s.summary = %q{A collection of powerful Sass (SCSS) functions to deal with your lists.}
  s.authors = ["Hugo Giraudel"]
  s.email = ["hugo.giraudel@gmail.com"]
  s.homepage = "http://at-import.github.io/SassyLists/"
  s.licenses = ['MIT']

  # README file
  s.files = ["README.md"]

  # CHANGELOG
  s.files += ["CHANGELOG.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")

  # Template Files
  # s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  s.add_dependency("sass",      ["~> 3.3"])
end
