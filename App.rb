# coding: Windows-31J
require 'rubygems'
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb :select
  end

  post '/result' do
   @sql = params[:sql]
   erb :result
  end
 
  get '/sql/:sql' do
    @sql = params[:sql]
    erb :result
  end
end

App.run! :host => 'localhost', :port => 8080
