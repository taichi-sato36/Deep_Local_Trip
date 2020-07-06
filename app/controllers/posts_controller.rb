class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    # 都道府県全てとそれぞれの県全てを分けて表示させる
  	if params[:prefecture_id]
  		# prefectureidを探す
  		@prefecture = Prefecture.find(params[:prefecture_id])
  	   # prefecture_idと紐づくデータを取得
	    @posts = @prefecture.posts.page(params[:page]).reverse_order
	else
	    # データをすべてを取得
	    @posts = Post.page(params[:page]).reverse_order
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
  	if @post.save
      tags = Vision.get_image_data(@post.post_image)
      tags.each do |tag|
        @post.tags.create(name: tag)
      end
  		redirect_to post_path(@post.id)
 	 else
 	 	render :new
 	 end
  end

  def show
  	@post = Post.find(params[:id])
  	@post_comment = PostComment.new
  end

  def likes
  	@like_posts = current_user.like_posts.page(params[:page]).per(200).order('updated_at DESC')
  end


private
    def post_params
        params.require(:post).permit(:title, :post_image, :is_valid, :address, :supplement, :text, :prefecture_id, :user_id)
    end
end
