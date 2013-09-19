require 'rubygems'
require 'bundler'
Bundler.require(:default, :test)

$:.unshift File.expand_path('../lib', File.dirname(__FILE__))

require 'kdl'
