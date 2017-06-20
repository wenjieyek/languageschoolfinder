class Area < ApplicationRecord

	validates :areaname,:presence=>true
	validates :state,:presence=>true


end
