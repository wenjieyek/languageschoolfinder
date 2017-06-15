class Promotion < ApplicationRecord

	belongs_to :school_user
	#has_many :courses

	mount_uploader :attachments, PromotionUploader

	validates :name,:presence=>true
	validates :details,:presence=>true
	#validates :attachments,:presence=>true
	validates :period,:presence=>true
	
end
