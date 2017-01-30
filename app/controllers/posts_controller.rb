class PostsController < ApplicationController
  layout 'admin'

  def new
    @post = Post.new
  end

  def create
    redirect_to '/'
  end
end
