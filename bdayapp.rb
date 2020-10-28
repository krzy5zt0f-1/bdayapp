require 'sinatra/base'


class Birthday < Sinatra::Base
  get '/test'do
    "Testing infrastructure working"
  end
end
