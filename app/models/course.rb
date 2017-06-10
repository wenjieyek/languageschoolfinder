class Course < ApplicationRecord
	belongs_to :school_user
	#belongs_to :teacher

	mount_uploader :attachments, CourseUploader
end
