class Area < ApplicationRecord

	belongs_to :state

	validates :areaname,:presence=>true
	


end
