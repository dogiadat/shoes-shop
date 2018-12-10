source "https://rubygems.org"
git_source :github do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem "carrierwave"
gem "mini_magick"
gem "will_paginate"
gem "bootstrap-will_paginate"
gem "faker"
gem "bootstrap-sass"
gem "bcrypt"
gem "jquery-rails", "~> 4.3", ">= 4.3.1"
gem "rails", "~> 5.1.6"
gem "sqlite3"
gem "jbuilder", "~> 2.5"
gem "adminlte-rails"
group :development, :test do
  gem "font-awesome-rails"
  gem "puma", "~> 3.7"
  gem "sass-rails", "~> 5.0"
  gem "uglifier", ">= 1.3.0"
  gem "coffee-rails", "~> 4.2"
  gem "turbolinks", "~> 5"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
  gem 'fog', '1.42'
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
