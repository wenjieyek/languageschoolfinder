class SchoolUser < ApplicationRecord
	# Tells rails to use this uploader for this model.
	mount_uploader :profilepicture, AttachmentUploader 
	has_secure_password
end
