class MobileController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authenticate_user!

	def index
	end

	def signin
		if request.post?
			@user = User.find_by_email(params["email"])
			if @user.valid_password?(params["password"])
				session["user_id"] = @user.id
				redirect_to carga_trayecto_path
			end
		end
	end

end
