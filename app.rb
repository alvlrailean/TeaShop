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
	info = params[:fromLS]

@arr = pars_info info
@totalIt=0
@totalPrice = 0

@arr.each do |item|
	tit = Product.find item[0]
	item[0] = tit.title
	item[2] = tit.price
	@totalIt += item[1].to_i 
	@totalPrice += item[2]
	
	erb :cart
end
end

post '/cart' do
	info = params[:fromLS]

@arr = pars_info info
@totalIt=0
@totalPrice = 0

@arr.each do |item|
	tit = Product.find item[0]
	item[0] = tit.title
	item[2] = tit.price
	@totalIt += item[1].to_i 
	@totalPrice += item[2]
end

erb :cart
end

def pars_info info
arr = []
arr2 = []
arr = info.split('|')

arr.each do |i|
	i.gsub!('tea_','')
	arr2 << i.split('$')

end


return arr2

end