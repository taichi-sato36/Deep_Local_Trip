class UsersController < ApplicationController
	before_action :authenticate_user!
	def show
		@user = User.find(params[:id])
		@posts = @user.posts
	end

	def edit
		@user = User.find(params[:id])
		if @user.id != current_user.id
  			redirect_to user_mypage_path(current_user.id)
  		end
	end

	def update
	  	@user = User.find(params[:id])
	  	if @user.update(user_params)
	  		flash[:notice] = "編集しました"
	  		redirect_to user_mypage_path(@user.id)
		else
		    render "edit"
		 end
  	end

 	def mypage
  	@user = User.find(params[:id])
  	@posts = @user.posts
	end

private

	def user_params
		params.require(:user).permit(:name, :profile_image, :local, :profile)
	end

end
