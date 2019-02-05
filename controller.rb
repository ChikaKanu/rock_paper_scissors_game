require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './models/comparator'
also_reload './models/*'

get '/' do
  erb(:home)
end

get '/welcome' do
  erb(:welcome)
end
#
# get '/the_game' do
#   erb(:the_game)
# end

get '/The-game/:player1/:player2' do
  comparator = Comparator.new(params[:player1].to_s, params[:player2].to_s)
  @comparation = comparator.compare_play()
  erb (:result)
end
