require 'sinatra'
require 'sinatra/reloader'

# Practice with Query String Params

get '/' do#"Exercise 1: added '?name=Andy' with success"
  @name = params["name"]

  erb :index
end

# Practice with Form Params

get '/items/new' do
  erb :new_item
end

post '/items' do
  @item = params['item']
  @price = params['price']
  erb :cart
end

get '/users/new' do
  erb :new_user
end

get '/cart' do #Exercise 2 URL: http://localhost:4567/cart?item=sushi&price=8.95
  @item = params['item']
  @price = params['price']
  erb :cart
end

post '/users' do
  @username = params['username']
  @password = params['password']
  erb :new_user
end
