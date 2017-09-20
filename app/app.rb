require 'sinatra/base'
require_relative 'models/link'

class App < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb 'links/index'.to_sym
  end


  run! if app_file == $0
end
