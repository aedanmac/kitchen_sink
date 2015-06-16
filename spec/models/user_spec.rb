require 'rails_helper'

RSpec.describe User, :type => :model do



	context "email" do


    	it "must be present" do
      	  expect(FactoryGirl.build(:null_email).save).to be false
        end

        it "user must have valid email" do
        	expect(FactoryGirl.build(:val_email).save).to be true
    	end

    	it "should not be too long" do
    		expect(FactoryGirl.build(:oversize_email).save).to be false
  		end

  		#it "must have a unique email" do
  		#	user1=
  		#	user2=

  		#	expect(user2.save).to be false
  	#	end	

  	end

    context "password" do

    	it "should not be too long" do
    		expect(FactoryGirl.build(:oversize_password).save).to be false
  		end

  		it "should not be too short" do
    		expect(FactoryGirl.build(:short_password).save).to be false
  		end

  		it "must be present" do
  			expect(FactoryGirl.build(:null_password).save).to be false
  		end

    end
end