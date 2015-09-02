require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative './models/addition'


get '/' do
  erb :home
  end

get '/add' do
  erb :add
end

post '/addition' do
  redirect to "/#{params[:number1]}/#{params[:number2]}"
  binding.pry
end

get  '/:num1/:num2' do
  "#{Addition.add( params[:num1].to_i, params[:num2].to_i)}"
  erb :home
end