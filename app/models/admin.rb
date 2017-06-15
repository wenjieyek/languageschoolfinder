class Admin < ApplicationRecord
	has_secure_password

	validates :username,:presence=>true,:length=>{:maximum=>50},:uniqueness=>true
	validates :password,:presence=>true,:length=>{:within=>8..25}
end
