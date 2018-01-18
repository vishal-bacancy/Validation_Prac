class User < ApplicationRecord

		validates :name, :email, :age, :password ,:mobile, presence: true, confirmation: true
		validates :terms, acceptance: {message: 'terms must be accepted'}
		validates :mobile, format: {with: /\A\d+\z/, message: 'use only numbers'}
		validates :name, format: {with: /\A[(a-zA-Z) | ( )]+\z/, message: 'use only alphabets'}
		validates :name, length: {minimum: 5, maximum: 10, message: 'enter between 5 to 10 characters'}
	 	

end
