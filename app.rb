require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :sessions_secret, "supersecretstuff"
  end

  get '/' do
    @session = session
    erb :index
  end
end
