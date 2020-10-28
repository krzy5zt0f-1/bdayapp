require 'sinatra/base'


class Birthday < Sinatra::Base
  enable :sessions
  get '/test'do
    "Testing infrastructure working"
  end
  get '/' do
    erb(:index)
  end 

end
