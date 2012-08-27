#encoding: UTF-8
require "sinatra/base"
require "slim"

class App < Sinatra::Base
  enable :sessions

  helpers do
  end

  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
    also_reload '*.rb'

    Slim::Engine.set_default_options :pretty => true
  end

  get '/' do
    slim :'index', :locals => {:title => "App"}
  end

  get '/one' do
    slim :'one', :locals => {:title => "App: one"}
  end

  get '/two' do
    slim :'two', :locals => {:title => "App: two"}
  end

  get '/three' do
    slim :'three', :locals => {:title => "App: three"}
  end

  get '/four' do
    slim :'four', :locals => {:title => "App: four"}
  end
end