require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    nice_game = Game.instance
    @player_1 = nice_game.player_1.name
    @player_2 = nice_game.player_2.name
    erb(:play)
    #binding.pry
  end

  get '/attack' do
    nice_game = Game.instance
    @player_1 = nice_game.player_1.name
    @player_2 = nice_game.player_2.name
    nice_game.attack(nice_game.player_2)
    @health_1 = nice_game.player_1.health
    @health_2 = nice_game.player_2.health
    erb :attack
  end

  run! if app_file == $0
end
