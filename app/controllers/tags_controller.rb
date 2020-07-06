class TagsController < ApplicationController
	# def show
 #    @tags = Tag.find(params[:id])
 #    @posts = @tags.posts.page(params[:page]).reverse_order
 #  end

def posts
    @tag = Tag.find(params[:id])
    @tag_posts = @tag.tag_posts.page(params[:page]).per(200).order('updated_at DESC')
  end

private
	def tag_params
		params.require(:tag).permit(:name)
	end

end
