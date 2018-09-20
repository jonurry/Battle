require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb(:play)
    #binding.pry
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $player_2.hit(10)
    @health_1 = $player_1.health
    @health_2 = $player_2.health
    erb :attack
  end

  run! if app_file == $0
end
