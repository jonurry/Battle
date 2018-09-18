require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello! This is Battle!'
  end
  run! if app_file == $0
end