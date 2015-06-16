class User < ActiveRecord::Base
	has_many :recipes
	has_secure_password
	
	validates 	:email, presence: :true, length: {in: 6..50 }, uniqueness: { case_sensitive: false}
	
	validates	:password, presence: :true, length: {in: 6..50 }
	
end
