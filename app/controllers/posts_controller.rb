class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.user_id = current_user.id
  	if @post.save
  		redirect_to posts_path
 	 else
 	 	render :new
 	 end
  end

  def show
  	@post = Post.find(params[:id])
  	@post_comment = PostComment.new
  end

  def likes
  	@like_posts = current_user.like_posts
  end

private
    def post_params
        params.require(:post).permit(:title, :post_image, :is_valid, :address, :supplement, :text, :prefecture_id, :user_id)
    end
end
