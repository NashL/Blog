class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    @post.author_id = current_author.id
    if @post.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post= Post.find(params[:id])
    @post.author_id = current_author.id
    if @post.update(posts_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  private
  def posts_params
    params.require(:post).permit(:title, :content, :slug)
  end
end
