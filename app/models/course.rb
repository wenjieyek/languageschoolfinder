class Course < ApplicationRecord
	belongs_to :school_user

	mount_uploader :attachments, CourseUploader
end
