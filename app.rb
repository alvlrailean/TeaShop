require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:database.db"

class Product<ActiveRecord::Base
end

before do

	@product = Product.all

end

get '/' do
 erb :index
end

get '/prodList' do 
	erb :prodList
end

get '/prodDetails/:id' do

	@tea_item = Product.find params[:id]
	
	erb :prodDetails	
end

get '/cart' do
	
	erb :cart

end

post '/cart' do
	@info = params[:fromLS]
	


erb :cart
end

