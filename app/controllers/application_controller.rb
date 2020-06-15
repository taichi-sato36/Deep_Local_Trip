class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resouce)
		home_path
	end
	def after_sign_out_path_for(resouce)
		home_path
	end
end
