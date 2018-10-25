source "https://rubygems.org"
git_source :github do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "will_paginate"
gem "bootstrap-will_paginate"
gem "faker"
gem "bootstrap-sass"
gem "bcrypt"
gem "jquery-rails", "~> 4.3", ">= 4.3.1"
gem "rails", "~> 5.1.6"
gem "sqlite3"
gem "jbuilder", "~> 2.5"
group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
