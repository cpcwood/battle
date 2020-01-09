require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_store, Rack::Session::Pool

  get '/' do
    erb :index
  end

  post '/names' do
    session[:game] = Game.new(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack_player2' do
    session[:game].attack_player(params[:reduce_HP].to_i)
    redirect '/game_over' if session[:game].game_over?
    redirect '/play'
  end

  get '/game_over' do
    erb :end_screen
  end

  # start the server if ruby file executed directly
  run! if $PROGRAM_NAME == __FILE__
end
