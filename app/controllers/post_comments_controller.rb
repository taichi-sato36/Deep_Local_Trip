class PostCommentsController < ApplicationController
	def create
		post = Post.find(params[:post_id])
		comment = PostComment.new(post_comment_params)
		comment.user_id = current_user.id
		comment.post_id = post.id
		comment.save
		redirect_to post_path(post.id) 
	end

	def destroy
	    PostComment.find_by(id: params[:id], post_id: params[:post_id]).destroy
	    redirect_to post_path(params[:post_id])
	end

private
	def post_comment_params
	    params.require(:post_comment).permit(:comment)
	end	
end
