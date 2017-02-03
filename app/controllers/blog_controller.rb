class BlogController < ApplicationController
  #GET /posts
  def index
    @posts=Post.all.order(updated_at: :desc).limit(10)
  end

  #GET /posts/:slug
  def show
    @post=Post.find_by_slug(params[:slug])
    @comment = Comment.new
  end
end
