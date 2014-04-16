class HomeController < ApplicationController
  # respond_to: html

  def index
    @list_of_blog_posts = Blog.all
    #respond_with @list_of_blog_posts
  end
end