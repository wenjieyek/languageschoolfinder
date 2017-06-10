class Teacher < ApplicationRecord
	belongs_to :school_user
	#has_many :courses

	mount_uploader :profilepicture, TeacherUploader
	mount_uploader :resumes, TeacherUploader
end
