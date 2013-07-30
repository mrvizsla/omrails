source 'https://rubygems.org'

# Must specify Ruby version
ruby '2.0.0'

gem 'rails', '4.0.0'
gem 'protected_attributes'
gem 'rails_12factor'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# For login, logout, edit acct., etc.
gem 'devise', '3.0.0.rc'

# For view mods
# activemodel was -v 4.0.0
# actionpack was -v 4.0.0
gem 'simple_form', '3.0.0.rc'

# Added to allow user to upload images
gem 'paperclip', '~> 3.0'

# Use sqlite3 as the database for Active Record
# Heroku does not like sqlite3 (sub pg), webrick (sub unicorn)
group :production do
  gem 'pg'
  gem 'unicorn'
#	gem 'webrick'
end
group :development, :test do
  gem 'sqlite3'
#  gem 'unicorn'
  gem 'webrick'
end

#gem 'sass-rails', '~> 4.0.0'
#gem 'bootstrap-sass', '~> 2.3.2.1'

group :assets do
	# Use SCSS for stylesheets
	gem 'sass-rails', '~> 4.0.0'
	# https://github.com/thomas-mcdonald/bootstrap-sass
	gem 'bootstrap-sass', '~> 2.3.2.1'
	# Use Uglifier as compressor for JavaScript assets
	gem 'uglifier', '>= 1.3.0'
	# Use CoffeeScript for .js.coffee assets and views
	gem 'coffee-rails', '~> 4.0.0'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end