
require 'capybara'
require 'capybara/rspec'
require 'rspec'
ENV['RACK_ENV'] = 'test'
#require File.join(File.dirname(__FILE__),'..','app.rb')
require 'app.rb'
require 'web_helpers'
require 'simplecov'
require 'simplecov-console'
Capybara.app = Battle


SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([SimpleCov::Formatter::Console])
SimpleCov.start
RSpec.configure do |config|
 # Use color not only in STDOUT but also in pagers and files
 config.tty = true
 # Use the specified formatter
 config.formatter = :documentation
 config.after(:suite) do
   puts
 end
end