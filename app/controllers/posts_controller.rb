class PostsController < ApplicationController
  def index
    #declare an instance var @posts & assign it a collection of Post objects
    # using the all method, provided by ActiveRecord
    @posts = Post.all
    @post.each_with_index do |post, index|
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
