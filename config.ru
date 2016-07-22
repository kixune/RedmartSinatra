require 'rubygems'
require 'bundler'
Bundler.require

require './models/user'
require './app'

use Rack::MethodOverride
run RedmartSinatraApp
