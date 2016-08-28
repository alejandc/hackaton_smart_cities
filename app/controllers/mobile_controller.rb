class MobileController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authenticate_user!

	def index
	end

	def ver_incidentes
		@origin_lat = params[:carga][:lat_origin]
		@origin_lng = params[:carga][:lng_origin]
		@destination_lat = params[:carga][:lat_destination]
		@destination_lng = params[:carga][:lng_destination]
		@travel_option = params[:carga][:travel_option]
		@incidentes = Incident.all
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
