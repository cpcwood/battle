require 'sinatra/base'
require 'player'
require 'game'

class Battle < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views") }
  set :public_folder, Proc.new { File.join(root, "../public") }

  enable :sessions

  get '/' do
    erb :homepage
  end

  post '/names' do
    Game.create(Player.new(name: params[:player1_name]), Player.new(name: params[:player2_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack_player' do
    @game.attack_player(params[:reduce_HP].to_i)
    redirect '/game_over' if @game.game_over?
    redirect '/play'
  end

  get '/game_over' do
    erb :end_screen
  end

  # before filters
  before do
    @game = Game.game_instance
  end

  # start the server if ruby file executed directly
  run! if $0 == __FILE__
end
