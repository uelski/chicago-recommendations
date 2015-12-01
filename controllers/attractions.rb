class AttractionsController < ApplicationController

get '/' do
  erb :index
end

get '/api' do
  Attraction.all.to_json
end

end
