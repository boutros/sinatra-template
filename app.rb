#encoding: UTF-8
require "sinatra/base"
require "sinatra/partial"
require "slim"

class App < Sinatra::Base
  register Sinatra::Partial
  enable :sessions

  helpers do
  end

  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
    also_reload '*.rb'
  end

  get '/' do
    slim :'index'
  end

  get '/one' do
    slim :'one'
  end

  get '/two' do
    slim :'two'
  end

  get '/three' do
    slim :'three'
  end
end