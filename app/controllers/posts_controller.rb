class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
  	if params[:prefecture_id]
  		# prefectureidを探す
  		@prefecture = Prefecture.find(params[:prefecture_id])
  	   # prefecture_idと紐づく商品を取得
	    @posts = @prefecture.posts.all
	else
	    # 商品すべてを取得
	    @posts = Post.all
	end
  end

  def prefectures
  	@prefectures = Prefecture.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.user_id = current_user.id
  	if @post.save!
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
