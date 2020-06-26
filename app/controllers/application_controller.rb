class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
# ログイン後にマイページへ遷移
	def after_sign_in_path_for(resouce)
		user_mypage_path(resouce)
	end
# ログアウト後にホムペーじへ遷移
	def after_sign_out_path_for(resouce)
		home_path
	end


protected
# 新規登録に名前を追加
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
