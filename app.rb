require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  configure do
    enable :sessions
    set :sessions_secret, "supersecretstuff"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    binding.pry
    params[:item]
  end
end
