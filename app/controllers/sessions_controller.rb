class SessionsController < ApplicationController

	#returns a new user for our form inside the new view
	def new
		@user = User.new
	end
end
