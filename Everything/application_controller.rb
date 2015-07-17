require 'bundler'
Bundler.require
require_relative 'models/generate_class.rb'
class MyApp < Sinatra::Base

  get '/' do
    
    erb :pattern_start
  end
  get '/pattern' do
    @blocks = BlockGen.new
    erb :pattern
  end
  get '/pattern_start' do
    erb :pattern_start
  end
  get '/pattern2' do
    @blocks = BlockGen.new
    erb :pattern_2
  end
  get '/pattern3' do
    @blocks = BlockGen.new
    erb :pattern_3
  end
end