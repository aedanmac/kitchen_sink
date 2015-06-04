class SessionsController < ApplicationController

	#returns a new user for our form inside the new view
	def new
		@user = User.new
	end
	def create
		user = User.where( email: user_params[:email]). first
		if user && user.authenticate(user_params[:password])

			flash[:success] = 'You are signed in!'
			redirect_to users_path
		else
			#this redirects back to the page
			flash[:error] = 'Unable to sign you in'

			redirect_to new_session_path
		end
	end

private
	def user_params
		params.require(:user).permit(:email,:password)
	end
end