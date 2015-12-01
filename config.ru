require 'sinatra/base'
require './controllers/application'
require './controllers/attractions'
require './models/attraction'

map('/') { run AttractionsController}
