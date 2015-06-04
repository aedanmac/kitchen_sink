class User < ActiveRecord::Base
	has_many :recipes
	has_secure_password
	
	validates :email, presence: :true, uniqueness: { case_sensitive: false}
end
