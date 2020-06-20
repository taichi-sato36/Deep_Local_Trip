class LikesController < ApplicationController
  def create
  	like = current_user.likes.build(post_id: params[:post_id])
  	like.save!
  	redirect_to post_path(params[:post_id])
  end

  def destroy
  	current_user.likes.find_by(post_id: params[:post_id]).destroy!
  	redirect_to post_path(params[:post_id])
  end
end
