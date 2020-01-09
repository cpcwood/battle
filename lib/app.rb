# frozen_string_literal: true

require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_store, Rack::Session::Pool

  get '/' do
    erb :index
  end

  post '/names' do
    p "params here:"
    p params
    session[:game] = Game.new(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack_player2' do
    session[:game].attack_player(2, params[:reduce_HP].to_i)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if $PROGRAM_NAME == __FILE__
end
