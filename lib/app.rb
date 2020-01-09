require 'sinatra/base'
# require_relative 'player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_store, Rack::Session::Pool
  
  @player_1 = Player.new(params[:player1_name])
  @player_2 = Player.new(params[:player2_name])
  

  get '/' do
    erb :index
  end

  post '/names' do
   session[:player1_name] = params[:player1_name]
   session[:player2_name] = params[:player2_name]
   redirect '/play' 
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :play 
  end

    # start the server if ruby file executed directly
    run! if __FILE__ == $0
end
