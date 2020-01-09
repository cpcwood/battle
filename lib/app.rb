require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_store, Rack::Session::Pool
  


  get '/' do
    erb :index
  end

  post '/names' do
   
   session[:player1] = Player.new(params[:player1_name])
   session[:player2] = Player.new(params[:player2_name])
   redirect '/play'
  end

  get '/play' do
    erb :play 
  end

    # start the server if ruby file executed directly
    run! if __FILE__ == $0
end
