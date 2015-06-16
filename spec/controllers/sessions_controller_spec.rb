require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do


	it "redirects to the new template" do

		get :new
		expect(response).to render_template(:new)
	
	end

	it "assigns a new user for the login form" do

		get :new 
		expect(assigns(:user)).to be_a_new(User)

	end

	it "logins user with the correst user name and password" do

		FactoryGirl.create(:valid_user)
		post :create, user: FactoryGirl.attributes_for(:valid_user)
		expect(assigns(:create)).to redirect_to recipes_path

	end

	

end

