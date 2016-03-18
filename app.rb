require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game  = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play

  end

  get '/attack1' do
    @game = $game
    @game.attack(@game.player_2)
    if $game.player_2.hitpoints == 0
      redirect '/lose'
    else
      erb :attack1
    end
  end

  get '/change_player' do
    @game = $game
    @game.change_player
    redirect '/play'
  end

  get '/lose' do
    erb(:loser)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
