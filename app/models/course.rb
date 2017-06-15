class Course < ApplicationRecord
	belongs_to :school_user
	#belongs_to :teacher

	mount_uploader :attachments, CourseUploader

	validates :name,:presence=>true
	validates :languagetype,:presence=>true
	validates :details,:presence=>true
	validates :price,:presence=>true
	#validates :attachments,:presence=>true
	validates :time,:presence=>true
	
end
