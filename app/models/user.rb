class User < ApplicationRecord
	has_secure_password

	EMAIL_REGEX=/\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
	


	validates :username,:presence=>true,:length=>{:maximum=>50}
	validates :password,:presence=>true,:length=>{:within=>8..25},:confirmation=>true
	validates :email,:presence=>true,:length=>{:maximum=>100},:format=>EMAIL_REGEX,:uniqueness=>true
	validates :address,:presence=>true

	


end
