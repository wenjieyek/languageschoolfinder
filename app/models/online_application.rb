class OnlineApplication < ApplicationRecord

	belongs_to :school_user

	mount_uploader :profilepicture, OnlineApplicationUploader
end
