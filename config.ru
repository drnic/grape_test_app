require File.expand_path('../config/environment', __FILE__)
require 'rack'

if ENV['RACK_ENV'] == 'development'
  log = File.new("log/development.log", "a")
  STDOUT.reopen(log)
  STDERR.reopen(log)
end

use Rack::Static, :urls => ["/stylesheets", "/images", "/javascripts"], :root => "public"
use Rack::Session::Cookie

run Rack::Cascade.new([
  TestApp::Application,
  TestApp::API
])