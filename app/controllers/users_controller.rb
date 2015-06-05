class UsersController < ApplicationController

	def index

	end
	#this is going to return our view to register a new user
	def new
		@user = User.new
	end

	def create

      if User.create(user_params)
        #redicret to signed in
        flash[:success] = 'You are registered'
        redirect_to recipes_path
      else

        flash[:error] = 'registration has failed'

        redirect_to new_session_path

      end
  end
private

  def user_params
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
end
