class SchoolAttachment < ApplicationRecord

	belongs_to :school_user
	

	mount_uploader :directory, SchoolAttachmentUploader

	validates :directory,:presence=>true
	
	
	

end
