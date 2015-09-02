require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative './models/addition'


get '/' do
  erb :home
  end

post '/addition' do
  redirect to "/#{params[:number1]}"
end

get  '/:num' do
  "#{Addition.add_1 params[:num].to_i}"
end