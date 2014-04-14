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
  @blogs = Blog.all
  erb :homepage, layout: :index
  
end

get '/single_post' do
  erb :single_post, layout: :index
end

get '/create_post' do
  erb :create_post, layout: :index
end

get '/edit_post' do
  erb :edit_post, layout: :index
end

