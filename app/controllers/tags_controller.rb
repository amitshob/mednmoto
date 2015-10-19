class TagsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end
  def create
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new(tag_params)
    if @tag.save
      redirect_to post_path(@post)
    else
      render :new
    end
    binding.pry
  end

  def update
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new(tag_params)
    if @tag.update(tag_params)
      redirect_to post_path(@post)
    else

      render:new
    end
  end



private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
