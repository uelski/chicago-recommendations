require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :database => "recommendations",
  :adapter => "postgresql"
)

get '/' do
  "hello, world"
end

get '/api' do
  Attraction.all.to_json
end
