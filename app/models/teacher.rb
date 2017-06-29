class Teacher < ApplicationRecord
	belongs_to :school_user
	#has_many :courses

	mount_uploader :profilepicture, TeacherUploader
	mount_uploader :resumes, TeacherUploader

	validates :name,:presence=>true
	validates :languagetype,:presence=>true
	validates :details,:presence=>true
	validates :profilepicture,:presence=>true
	#validates :resumes,:presence=>true
end
