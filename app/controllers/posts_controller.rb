class PostsController < ApplicationController
  layout 'admin'

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:post][:title], content: params[:post][:content], author_id: params[:post][:author_id], slug: params[:post][:slug])
    @post.save
    redirect_to '/'
  end
end
