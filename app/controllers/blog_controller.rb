class BlogController < ApplicationController
  #GET /posts
  def index
    @posts=Post.all.limit(10)
  end

  #GET /posts/:slug
  def show
    @post=Post.find_by_slug(params[:slug])
  end
end
