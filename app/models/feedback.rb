class Feedback < ApplicationRecord

	validates :name,:presence=>true
	validates :email,:presence=>true
	validates :phonenumber,:presence=>true
	validates :title,:presence=>true
	validates :details,:presence=>true
end
