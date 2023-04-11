require 'sinatra'

class HiSinatra < Sinatra::Base
  get '/' do
    "Hey Sinatra!"
  end

  get '/hello' do
    "Hello, World!"
  end

  get '/:age' do
    "Hi, I'm #{params[:age]} years old"
  end
  
end
