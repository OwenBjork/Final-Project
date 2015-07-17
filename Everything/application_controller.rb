require 'bundler'
Bundler.require
require_relative 'models/generate_class.rb'
class MyApp < Sinatra::Base

  get '/' do
    
    erb :index
  end
  get '/pattern' do
    @blocks = BlockGen.new
    erb :pattern
  end
  get '/pattern_start' do
    erb :pattern_start
  end
end