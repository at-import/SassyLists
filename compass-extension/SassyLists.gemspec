# Replace extension with the name of your extension's .rb file
require './lib/SassyLists'

Gem::Specification.new do |s|
  # Release Specific Information
  #  Replace SassyLists with the name you used in your SassyLists.rb
  #   in the mdodule with version and date.
  s.version = SassyLists::VERSION
  s.date = SassyLists::DATE

  # Gem Details
  # Replace "SassyLists" with the name of your extension
  s.name = "SassyLists"
  s.rubyforge_project = "SassyLists"
  # Description of your extension
  s.description = %q{Advanced Sass list functions}
  # A summary of your Compass extension. Should be different than Description
  s.summary = %q{A collection of powerful Sass (SCSS) functions to deal with your lists.}
  # The names of the author(s) of the extension.
  # If more than one author, comma separate inside of the brackets
  s.authors = ["Hugo Giraudel"]
  # The email address(es) of the author(s)
  # If more than one author, comma separate inside of the brackets
  s.email = ["hugo.giraudel@gmail.com"]
  # URL of the extension
  s.homepage = "https://github.com/Team-Sass/Sass-list-functions"

  # Gem Files
  # These are the files to be included in your Compass extension.
  # Uncomment those that you use.

  # README file
  s.files = ["readme.md"]

  # CHANGELOG
  s.files += ["CHANGELOG.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")

  # Template Files
  # s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  # Versions of Ruby and Rubygems you require
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  # Gem names and versions that are required for your Compass extension.
  # These are Gem dependencies, not Compass dependencies. Including gems
  #  here will make sure the relevant gem and version are installed on the
  #  user's system when installing your gem.
  s.add_dependency("sass",      [">=3.2.0"])
  s.add_dependency("compass",   [">= 0.12.1"])
end