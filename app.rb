require("sinatra")
require("sinatra/contrib/all") if development?
require 'sinatra/activerecord'

require_relative("controllers/book_controller")
require_relative("controllers/author_controller")
require_relative("controllers/genre_controller")

class App < Sinatra::Base
  get "/" do
    erb(:index)
  end
end
