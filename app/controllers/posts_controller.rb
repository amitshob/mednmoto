class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end

  def show
    @posts = Post.find(params[:id])
    render :show
  end
end
