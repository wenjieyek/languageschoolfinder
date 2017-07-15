class SchoolUser < ApplicationRecord

	has_secure_password 
	has_many :courses
	has_many :teachers
	has_many :promotions
	has_many :newsfeeds
	has_many :certificates
	has_many :school_attachments
	has_many :inquiries
	has_many :online_applications


	# Tells rails to use this uploader for this model.
	mount_uploader :profilepicture, AttachmentUploader

	EMAIL_REGEX=/\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
	


	validates :name,:presence=>true,:length=>{:maximum=>50}
	validates :phonenumber,:presence=>true,:length=>{:maximum=>50}

	validates :password,:presence=>true,:length=>{:within=>8..25},:confirmation=>true,on: :create
	
	validates :email,:presence=>true,:length=>{:maximum=>100},:format=>EMAIL_REGEX,:uniqueness=>true
	validates :website,:length=>{:maximum=>100}

	validates :address,:presence=>true

	validates :description,:presence=>true

	validates :transportation,:presence=>true

	validates :profilepicture,:presence=>true
	
	



	
 
end
