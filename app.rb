require 'sinatra/base'

class Battle < Sinatra::Base

P1_LIFE= 100
P2_LIFE= 100

enable :sessions

  get '/' do
    erb(:player_form)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_life = P1_LIFE
    @player2_life = P2_LIFE
    erb :play
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
