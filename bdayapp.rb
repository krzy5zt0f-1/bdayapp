require 'sinatra/base'


class Birthday < Sinatra::Base
  enable :sessions
  get '/test'do
    "Testing infrastructure working"
  end
  get '/' do
    erb(:index)
  end

  post '/date' do
    p params
    session[:name] = params[:name]
    session[:day] = params[:day]
    redirect '/results'
  end
  get '/results' do
    @name = session[:name]
    @birthday = session[:day]
    "chuj"
  end

end
