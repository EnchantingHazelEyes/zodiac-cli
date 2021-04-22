#require_relative "zodiac_cli/version"

#require "pry"

require "bundler"
Bundler.require

require 'uri'
require 'net/http'
require 'openssl'



require_all "./lib/zodiac_cli"
#binding.pry 