class CallbacksController < Devise::OmniauthCallbacksController
	def twitter
		@user = User.from_omniauth(request.env["omniauth.auth"])
		sign_in and redirect
	end 
end 
