require 'sinatra'

# Hey dude, this is a comment
get '/' do 
  "Hello World"
end

get '/index' do 
  "This is the index action"
end

get '/hello_world' do
  erb :hello_world
end

get '/hey_dude' do
  @instance = "Instance"
  @instance2 = ["Dudette", "Todd", "Cliff", "Kiwi"]
  erb :hey_dude
end

get '/hey_man/:name' do
  @name = params[:name]
  erb :hey_man
end

# get '/hey_man/:name' do |name|
#   @name = name 