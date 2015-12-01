class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require
  ActiveRecord::Base.establish_connection(
    :database => "recommendations",
    :adapter => "postgresql"
  )

  set :views, File.expand_path('../../views', __FILE__)

  not_found do
    erb :fourohfour
  end

end
