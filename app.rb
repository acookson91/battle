require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  def self.store_game(game)
    @game = game
  end

  def self.show_game
    @game
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    Battle.store_game(Game.new(player1, player2))
    Battle.show_game
    redirect '/play'
  end

  get '/play' do
    Battle.show_game
    erb :play
  end

  get '/attack1' do
    Battle.show_game
    Battle.show_game.attack(Battle.show_game.player_2)
    if Battle.show_game.player_2.hitpoints == 0
      redirect '/lose'
    else
      erb :attack1
    end
  end

  get '/change_player' do
    Battle.show_game
    Battle.show_game.change_player
    redirect '/play'
  end

  get '/lose' do
    erb(:loser)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
