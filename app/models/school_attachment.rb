class SchoolAttachment < ApplicationRecord

	belongs_to :school_user
	

	mount_uploader :directory, SchoolAttachmentUploader

	validates :directory,:presence=>true
	validates :attachmenttype,:presence=>true
	


end
