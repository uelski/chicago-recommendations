class AttractionsController < ApplicationController

get '/' do
  @attraction = Attraction.all
  erb :read_attraction
end

get '/create' do
  erb :create_attraction
end

post '/create' do
  p params
  @attrac = Attraction.new
  @attrac.contributor = params[:contributor]
  @attrac.place = params[:place]
  @attrac.type_of_place = params[:type_of_place]
  @attrac.notes = params[:notes]
  @attrac.save
  erb :index
end

get '/api' do
  Attraction.all.to_json
end

get '/api/:id' do
  puts params
  return Attraction.find(params[:id]).to_json
end

end
