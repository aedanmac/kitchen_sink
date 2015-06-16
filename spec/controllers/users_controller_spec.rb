require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  #render_views

	it "redirects to the index view" do

    	get :index
    	expect(response).to render_template(:index)

  	end

  	it "new creates a new user" do
    	
    	get :new
    	expect(assigns(:user)).to be_a_new(User)

  	end

  	it "returns the new view for the new method" do
  		
  		get :new
  		expect(response).to render_template(:new)

  	end

  	it "doesn't allow create method to create an invalid user and redirects correctly" do

  		post :create, user: FactoryGirl.attributes_for(:oversize_email)
  		expect(response).to redirect_to new_session_path

  	end

  	it "allows create method the creation of a valid user and redirects correctly" do
  		
  		post :create, user: FactoryGirl.attributes_for(:valid_user)
  		expect(response).to redirect_to recipes_path

  	end
end



