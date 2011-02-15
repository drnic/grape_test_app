puts "Loading environment..."

require 'rubygems'
require 'bundler'

Bundler.setup :default, (ENV['RACK_ENV'] || 'development')

require File.expand_path('../application', __FILE__)

require 'api'
require 'models'
