source 'https://rubygems.org'

gem 'rake'
gem 'sinatra'
gem 'activerecord'
gem 'sinatra-activerecord'
gem 'unicorn'
gem 'foreman'
gem 'poncho'

group :development, :test do
  gem 'sqlite3'
end
   
group :production do
  gem 'pg' # this gem is required to use postgres on Heroku
end