require 'sinatra/base'
require_relative 'celebrate'
class Birthday < Sinatra::Base
  enable :sessions
  get '/test'do
    "Testing infrastructure working"
  end
  get '/' do
    erb(:index)
  end

  post '/date' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    redirect '/results'
  end
  get '/results' do
    @name = session[:name]
    @days_to_bday = bday(session[:day])
    erb(:results)
  end

end
