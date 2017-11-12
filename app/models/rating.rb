class Rating < ApplicationRecord

	belongs_to :school_user



	validates :coursename,:presence=>true
	validates :title,:presence=>true
	validates :comments,:presence=>true

	
end
