class PostsController < ApplicationController
  before_action :authenticate_author!
  before_action :set_post, except: [:new, :create, :index]

  def index
    @author = Author.find(params[:author_id ])
    @posts = Post.where('author_id = ?',(params[:author_id]))
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_author.posts.new(posts_params)
    if @post.save
      redirect_to '/'
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @post.update(posts_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  private

  def set_post
    @post= Post.find(params[:id])
  end

  def posts_params
    params.require(:post).permit(:title, :content, :slug)
  end
end
