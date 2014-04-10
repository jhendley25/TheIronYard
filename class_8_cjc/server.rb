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

get '/layout_test' do
  @lorem_text = "Lorem ipsum dolor some text"

get '/layout_test2' do 
  @bros = [
    {first_name: "Chad", last_name:"bob"}
    {first_name: "Boyd",}]

      erb :render_bros, layout: :id 

# get '/hey_man/:name' do |name|
#   @name = name 