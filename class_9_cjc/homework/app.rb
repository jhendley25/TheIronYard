require 'sinatra'
require 'data_mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/blog'
)

class Blog
  include DataMapper::Resource

  property :id, Serial
  property :blog_title, String
  property :blog_content, String
end

DataMapper.finalize.auto_upgrade!

# Homepage is the aggreate of all the posts. 
get '/' do
  @blog = Blog.all
  erb :homepage, layout: :index
  
end

get '/single_post' do
  erb :single_post, layout: :index
end

get '/create_post' do
  erb :create_post
end
post '/create_post' do
  @blog = Blog.create params[:blog]
  redirect to('/')
end

get '/edit_post/:id' do
  @blog = Blog.get params[:id]
  erb :edit_post
end

put '/edit_post/:id' do
  @blog = Blog.get params[:id]
  @blog.update params [:person] 
  redirect to ('/')
end

