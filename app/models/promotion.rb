class Promotion < ApplicationRecord

	belongs_to :school_user
	#has_many :courses

	mount_uploader :attachments, PromotionUploader
	
end
