class User < ApplicationRecord

	validates :name, :email, :age, :password ,:mobile, presence: true, confirmation: true

	

end
