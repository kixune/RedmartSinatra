require 'rubygems'
require 'bundler'
Bundler.require

require './models/user'
require './models/products'
require './app'

use Rack::MethodOverride
run RedmartSinatraApp
