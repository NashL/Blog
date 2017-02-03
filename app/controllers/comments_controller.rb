class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))
    respond_to do |format|
      format.html  {redirect_to '/blog/2016/january/' + @post.slug}
      format.js
      format.json {render json: @comment}
    end
  end

  def index
    @posts = Post.all
    respond_to do |format|
      format.json {render json: @posts}
    end
  end
end

